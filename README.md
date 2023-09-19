# WILD7400_growthchoice

**Overview**

1. Purpose:
The main objective of this agent-based model is to explore and understand the dynamics of an ecosystem within the context of the landscape of fear framework in ecology. Specifically, it seeks to answer the following question: Does an ecosystem that contains only the highest quality foods always support a large and stable population for a species that relies on this resource? This model will investigate how food quality, individual size, and searching behavior influence the population dynamics of a herbivore species.

2. Entities, State Variables, and Scales:
Entities: The model simulates individual herbivores as agents within the ecosystem, where the ecosystem contains various food sources.
State Variables: Each individual herbivore has one attribute: size, which is related to their willingness to search for high-quality food. Each food source has a specified quality (related to the accessibility of the resource-probability of finding it- and how nutritionally useful it is). 
Scales: The model operates on both spatial and temporal scales. Spatially, it represents an area where herbivores interact with their environment, and temporally, it simulates the passage of time as herbivores search for and consume food. (Note that we do not specifically track the spatial component and we will not consider reproduction explicitly to keep this model simple.)

3. Process Overview and Scheduling:
Growth: Herbivores may grow over time, affecting their size and willingness to search for high-quality food.
Food Resource Replication: Food resources of varying qualities will always be present within the environment.
Searching Behavior: Herbivores will exhibit searching behavior based on their size and the quality of available food resources. Larger individuals are more likely to search for high-quality food, while smaller individuals may accept lower quality food.


**Design Concepts**

1. Basic Principles: The model is based on the landscape of fear framework in ecology, which considers how food quality, individual traits (size), and searching behavior interact to influence herbivore population dynamics. It assumes that larger individuals are more likely to search for high-quality food but may expend more energy in the process.

2. Emergence: The model aims to capture emergent phenomena related to population dynamics, including fluctuations in population size and changes in individual size distributions.

3. Adaptation: Agents (herbivores) adapt their searching behavior based on their size and the quality of available food resources.

4. Objectives: The primary objective of herbivores is to maximize their reproductive success, which is influenced by food quality and individual size.


**Details**

1. Initialization: The simulation initializes with a defined number of herbivores with random initial sizes and reproductive statuses. Food resources are also randomly available in the landscape, with varying quality levels.

2. Input Data: Data from ecological studies or literature to be used to parameterize the model, including values for growth rates, reproductive rates, and food quality thresholds. (We may make guesses at this in the interest of time.)

3. Submodels: The model will include submodels for herbivore growth and food resource dynamics.

4. Parameters: Model parameters include growth rates food quality thresholds, and the size-based probability of searching for high-quality food.

5. Observations: The model's output includes observations of population size, individual size distributions, and food resource availability over time.

6. Initialization and Termination: The simulation begins at time step one and continues for 100 steps.

7. Stochasticity: Stochastic elements (i.e. noise around a defined mean or optimum) may be included in the model to represent randomness in food resource availability and herbivore searching behavior.
