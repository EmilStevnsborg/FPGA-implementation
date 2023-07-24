import ast
import json 
import numpy as np
import pandas as pd
from sklearn.metrics import accuracy_score

np.set_printoptions(precision=2, suppress=True, formatter={'float': '{:e}'.format})
pd.set_option('display.float_format', '{:.1e}'.format)

def relative_root_mean_squared_error(true, pred):
    num = np.sum(np.square(true - pred))
    den = np.sum(np.square(pred))
    squared_error = num/den
    rrmse_loss = np.sqrt(squared_error)
    return rrmse_loss


def analysis(layers, types):
    dataframe = pd.DataFrame({"" : ["mean", "var", "max", "rrmse"]})
    for layer, type in zip(layers, types):
        trues = np.array([])
        preds = np.array([])
        for t in range(1,11):
            with open("Tests/" + layer + "/outputs" + type + "/output" + str(t) + ".json", "r") as file:
                data = json.load(file)
            trues = np.append(trues, np.array(data["True"]))
            preds = np.append(preds, np.array(data["Pred"]))

        loss = np.absolute(trues-preds)
        print(all (x < 0.000009 for x in loss.tolist()))

        mean = np.mean(loss)
        var = np.var(loss)
        max = np.max(loss)
        rrmse = relative_root_mean_squared_error(trues,preds)

        dataframe[layer] = [mean,var,max,rrmse]
    
    return dataframe

# Each new file contains only one output
def analysis_network():
    # for t in range(1,11):
    with open("Tests/Network/output.json", "r") as file:
        data = json.load(file)
    
    true = np.array(data["True"])
    pred = np.array(data["Pred"])

    true_class = []
    pred_class = []
    
    for i in range(0, 10, 2):
        true_val = true[i: i + 2]
        pred_val = pred[i: i + 2]
        loss = true_val - pred_val

        true_class.append(np.argmax(true_val))
        pred_class.append(np.argmax(pred_val))

        if (np.argmax(true_val) != np.argmax(pred_val)):

            print("Index: {}, True value: {}, Pred value: {}, loss: {}".format(i,true_val, pred_val, loss))
    
    acc = accuracy_score(true_class, pred_class)

    dataframe = pd.DataFrame({"" : ["accuracy"]})
    dataframe.loc[len(dataframe)] = acc

    return dataframe


layers = ["conv1","batchNorm1","relu1","maxPool1","conv2","batchNorm2","relu2","maxPool2","linear","softmax"]
types = ["00", "00", "00", "00", "01", "11", "11", "11", "10", "00"]

layers_df = analysis(layers, types)
print("Stats for the layers isolated")
# print(layers_df.to_latex(index=False))
print(layers_df.to_string())
print("\n")

print("Accuracy of class predictions of SME implementation in relation to the PyTorch implementation")
print(analysis(["Network"],[""]))






