import json 
import torch
import torch.nn as nn
torch.manual_seed(0)
torch.set_printoptions(sci_mode=False, precision=8)

def create_input_json(model, inChannels, height, width, samples, dir):
    for i in range(1,samples+1):
        d = {}

        input = torch.rand(1,inChannels,height,width, requires_grad=False)*10-5
        output = model(input)
        buffer = input.reshape(inChannels,height*width).tolist()
        computed = output.reshape(inChannels,height*width).tolist()

        d["buffer"] = buffer
        d["computed"] = computed

        input_json = json.dumps(d, indent=4)
        
        with open(dir + "input" + str(i) + ".json", "w") as outfile:
            outfile.write(input_json)


# Config 1
####################################################################################################
#
d = {}
d["numInChannels"] = 5
d["numOutChannels"] = 5
d["channelHeight"] = 3
d["channelWidth"] = 7

config_json = json.dumps(d, indent=4)
relu = nn.ReLU()

if True:
    with open("TestConfig1/config.json", "w") as outfile:
        outfile.write(config_json)
    create_input_json(relu, 5, 3, 7, 10, "TestConfig1/")
   
# Config 2
####################################################################################################
#
d = {}
d["numInChannels"] = 10
d["numOutChannels"] = 10
d["channelHeight"] = 1
d["channelWidth"] = 5

config_json = json.dumps(d, indent=4)
relu = nn.ReLU()

if True:
    with open("TestConfig2/config.json", "w") as outfile:
        outfile.write(config_json)
    create_input_json(relu, 10, 1, 5, 10, "TestConfig2/")
    
# Config 3
####################################################################################################
#
d = {}
d["numInChannels"] = 2
d["numOutChannels"] = 2
d["channelHeight"] = 10
d["channelWidth"] = 5

config_json = json.dumps(d, indent=4)
relu = nn.ReLU()

if True:
    with open("TestConfig3/config.json", "w") as outfile:
        outfile.write(config_json)
    create_input_json(relu, 2, 10, 5, 10, "TestConfig3/")

