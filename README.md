# DL-friend-recommendation

### Team name

SF

### Team members' names and Neptun codes

~~Dau Quang Phong - QQ6ASM~~ (he stopped working on the subject's requirements during the semester)

Gyömbér Péter - PIM313

Rikli Szabolcs - VZ3P8F

### Project description

The goal of this project is to develop a personalized friend recommendation system by using Graph Neural Networks (GNNs) using data from Facebook, Google+, or Twitter to suggest meaningful connections based on user profiles and interactions.

### Functions of the files in the repository

milestone1.ipynb - The IPython Notebook file containing the data acquisition, cleansing and preparation steps.

requirements.txt - The list of python packages possibly needed in the future.

The rest of the files are not relevant to the first milestone.

### Related works (papers, GitHub repositories, blog posts, etc)

https://arxiv.org/abs/1607.00653

https://arxiv.org/abs/1611.07308

https://github.com/AntonioLonga/PytorchGeometricTutorial/blob/main/Tutorial12/Tutorial12%20GAE%20for%20link%20prediction.ipynb

https://www.youtube.com/watch?v=m1G7oS9hmwE&list=PLGMXrbDNfqTzqxB1IGgimuhtfAhGd8lHF&index=6

https://github.com/Flawless1202/VGAE_pyG/tree/master

https://archive.li/SXH4W#selection-10415.0-10415.7

https://github.com/lucashu1/link-prediction/blob/master/link-prediction-baselines.ipynb

### Milestone 2

You can run the milestone2.ipynb to check the pipeline. The training can be found under the "Training the model" section, while the evaluation under the "Evaluate" section.

### Final milestone

The final_milestone.ipynb contains the final version of our solution. You can simply run the notebook the observe the training pipeline and see the evaluation results. We also created the final_milestone.py, which were generated from the notebook, commenting out a few lines for installing packages. We tried to use it in the dockerfile, but we ran into some complications. Instead you can use the dockerfile to create an image of the notebook, then you can run the container and access the notebook through the browser.

Using docker:

1. Clone the github repositury to your computer
2. Open a terminal and go to the directory, where the dockerfile is located
3. Build the image: docker build -t final_milestone .
4. Run the container: docker run -p 8888:8888 final_milestone
5. You will get a link which you can use to open the notebook in the browser, it should look similar to this (use your own token): http://127.0.0.1:8888/tree?token=your_token
6. After opening the notebook, you can run all the cells - it will download the data, train the models, show the evaluation metrics and start a gradio application
7. You can select a node index in the gradio app and you will see the best recommendations for that node, predicted by our model
