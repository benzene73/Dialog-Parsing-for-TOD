# Dialog-Parsing-for-TOD
Dialog Parsing for Task-Oriented Dialog Systems. | COL772 course (Fall 23) at IIT Delhi. 

<!-- MarkdownTOC -->

1. [Problem Statement](#problem-statement)
1. [Methodology](#methodology)
	1. [Datasets used](#datasets-used)
	1. [Model](#model)
1. [Running the code](#running-the-code)
	1. [Training](#training)
	1. [Inference](#inference)
1. [Authors](#authors)

<!-- /MarkdownTOC -->


<a id="problem-statement"></a>
## Problem Statement

The primary objective of this project is to develop a sophisticated Task-Oriented Dialogue (TOD) parsing model utilizing pre-trained language models such as GPT-2 or BART. The parsing model is designed to take a user's utterance as input and generate a parsed output in a designated format. The output format is aligned with the training data, and the task is initially approached as a sequence generation problem.

Additional features are encouraged to be incorporated into the model to enhance its performance. These include the dialogue history and user-specific information fields such as lists and notes. Multiple input representations can be experimented with to optimize the model's performance.

The training data consists of two specific linguistic patterns—'None' and 'Disfluency.' These patterns can be leveraged to further refine the model during the training phase, potentially through auxiliary tasks or other advanced techniques suitable for pre-trained language models.

Another avenue for improvement is the incorporation of a copy mechanism that allows the model to copy tokens directly from the input. This feature can be instrumental in increasing the model's parsing accuracy.

Lastly, it's observed that the output follows a specific grammatical structure. Identifying and exploiting this structure could serve to improve the model or constrain the decoder, thereby enhancing the overall model performance. The validation split can be created from the provided data in a manner that best serves the model's performance evaluation.

You must train a pre-trained language model based model to predict the parsed output given
other input fields.
Consider the output string “Send_digital_object ( medium « Message » recipient Personal_contact ( person « my mom » ) )”. 
Here, Send_digital_object is the intent and (medium, Message) and (recipient Personal_contact, (person, my mom) are slot-value pairs.
Note that the data has nested slot-value pairs as well as can be seen for (person, my mom).
There are a total 34 intents and 303 slot types in the dataset.
Some user utterances in the data are captured through ASR systems and thus lack fluency (e.g. Send text to umm, to Brian and add ETA.). These samples are annotated with “pattern”: “disfluency”.

<a id="methodology"></a>
## Methodology

<a id="datasets-used"></a>
### Datasets used
**The datasets can be found: [[here](https://csciitd-my.sharepoint.com/:f:/g/personal/csz208845_iitd_ac_in/Ek3uKYl3AEpJmieSweDjNOIBy5dRJXbZeDHrHKq-2rzscA?e=BFxj7c**

<a id="model"></a>
### Model
We finetuned BARTforConditionalGeneration model, specifically the large version, from the huggingface implementation. 


<a id="running-the-code"></a>
## Running the code
<a id="training"></a>
### Training
To train yourself, use the run-model.sh file. 
**While running the training script, the files mentioned in [Section 2.i](#datasets-used) have to be placed under `dataset/` directory (relative to the training script).**

<a id="inference"></a>
### Inference
For inference you can use [`inference.ipynb`](inference.ipynb). 

**You can either fine-tune your own version of the model *(by following the steps mentioned in the previous section)* or use our version which is available [[here](https://www.kaggle.com/dataset/d6b465f7d274361446ce0129469f4e070f235cf8b639b25d424186d1381bc691)].**


<a id="authors"></a>
## Authors
- Vasanth K [(benzene73)](https://github.com/benzene73)
- Naman Gupta [(rachit-0032)](https://github.com/rachit-0032)



----
*This README uses texts from the assignment problem document provided in the course.*
