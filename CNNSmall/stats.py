import ast
import json 
import numpy as np
import pandas as pd
from sklearn.metrics import accuracy_score

np.set_printoptions(precision=1, suppress=True, formatter={'float': '{:.0e}'.format})
pd.set_option('display.float_format', '{:.0e}'.format)

def relative_root_mean_squared_error(true, pred):
    num = np.sum(np.square(true - pred))
    den = np.sum(np.square(pred))
    squared_error = num/den
    rrmse_loss = np.sqrt(squared_error)
    return rrmse_loss


# Each new file contains only one output
def analysis_network(layers, types, iso_accum):
    dataframe = pd.DataFrame({"" : ["mean", "var", "max", "rrmse"]})
    true_class = []
    pred_class = []
    for (layer, type) in zip(layers, types):
        trues = np.array([])
        preds = np.array([])
        losses = np.array([])  
        for t in range(1,11):
            
            # isolation or accumulation
            if iso_accum == "iso":
                pred_path = "Tests/" + layer + "/outputs" + type + "/output" + str(t) + ".json"
            else:
                pred_path = "Tests/Network/test" + str(t) + "/" + layer + ".json"
            
            # open files according to iso or accum
            with open(pred_path, "r") as file:
                pred_f = json.load(file)
            with open("Tests/" + layer + "/inputs/input" + str(t) + ".json", "r") as file:
                true_f = json.load(file)

            true = np.array(true_f["computed"])
            # Depends on whether the output comes in parallel or sequentially
            if type == "00" or type == "01":
                true = true.T.reshape(-1)
            else:
                true = true.reshape(-1)
            pred = np.array(pred_f["Pred"])
            loss = np.absolute(true-pred)
            trues = np.append(trues, true)
            preds = np.append(preds, pred)
            losses = np.append(losses, loss)

            if layer == "softmax":
                true_class.append(np.argmax(true))
                pred_class.append(np.argmax(pred))

        mean = np.mean(losses)
        var = np.var(losses)
        max = np.max(losses)
        rrmse = relative_root_mean_squared_error(trues,preds)

        dataframe[layer] = [mean,var,max,rrmse]

    acc = accuracy_score(true_class, pred_class)
    print(acc)

    return dataframe


layers = ["conv1","batchNorm1","relu1","maxPool1","conv2","batchNorm2","relu2","maxPool2","linear","softmax"]
types = ["00", "00", "00", "00", "01", "11", "11", "11", "10", "00"]

layers_df = analysis_network(layers, types, "iso")
print("Stats for the layers isolated")
# print(layers_df.to_string())
print(layers_df.T.to_latex(header=False))
print("\n")

print("Accumulated layer loss, and accuracy of class predictions of SME implementation in relation to the PyTorch implementation")
layers_accum_df = analysis_network(layers, types, "accum")
# print(layers_accum_df.to_string())
print(layers_accum_df.T.to_latex(header=False))






