import json 
import torch
import torch.nn as nn
torch.manual_seed(0)
torch.set_printoptions(sci_mode=False, precision=20)

def create_input_json(model, inChannels, samples, dir):
    for i in range(1,samples+1):
        d = {}

        input = torch.rand(1,inChannels, requires_grad=False)*10-5
        output = model(input)
        buffer = input.reshape(inChannels,1).tolist()
        computed = output.reshape(inChannels,1).tolist()

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
d["channelHeight"] = 1
d["channelWidth"] = 1

config_json = json.dumps(d, indent=4)
softmax = nn.Softmax(dim=1)

if True:
    with open("TestConfig1/config.json", "w") as outfile:
        outfile.write(config_json)
    create_input_json(softmax, 5, 10, "TestConfig1/")

# Config 2
####################################################################################################
#
d = {}
d["numInChannels"] = 2
d["channelHeight"] = 1
d["channelWidth"] = 1

config_json = json.dumps(d, indent=4)
softmax = nn.Softmax(dim=1)

if True:
    with open("TestConfig2/config.json", "w") as outfile:
        outfile.write(config_json)
    create_input_json(softmax, 2, 10, "TestConfig2/")

# Config 3
####################################################################################################
#
d = {}
d["numInChannels"] = 30
d["channelHeight"] = 1
d["channelWidth"] = 1

config_json = json.dumps(d, indent=4)
softmax = nn.Softmax(dim=1)

if True:
    with open("TestConfig3/config.json", "w") as outfile:
        outfile.write(config_json)
    create_input_json(softmax, 30, 10, "TestConfig3/")