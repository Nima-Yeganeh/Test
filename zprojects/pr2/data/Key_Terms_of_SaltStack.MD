1. State: A configuration applied to a server or group of servers by SaltStack. 
2. Pillar: A set of variables that can be used to define configuration values for specific minions or groups of minions. 
3. Grain: Information about a minion, such as its operating system or IP address, that can be used to target a specific group of minions. 
4. Salt Master: A SaltStack server that manages and controls communication with the Salt minions. 
5. Salt Minion: A client node that SaltStack manages and executes commands or states on. 
6. Salt SSH: A method of using SaltStack without requiring a separate Salt Master server, using SSH to execute Salt commands directly on the minions. 
7. Runner: An interface for executing ad-hoc commands on one or more Salt minions. 
8. Orchestration: A system for running complex, multi-step tasks across multiple Salt minions in parallel. 
9. Highstate: The state of a Salt minion after applying all defined states and configurations. 
10. Top file: A configuration file that defines the layout of the Salt environment, including which minions should receive which states.
