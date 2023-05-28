# Retrieve `ssh` script files from the Git

🚀 Project Description

This project aims to automate the retrieval and installation of an SSH server on Linux systems. It provides a seamless process for configuring and establishing the initial connection to the server, simplifying the setup and enabling secure remote access.

## Table of Contents

- Installation
- Usage

## Installation

📥 To retrieve the necessary files for the project, follow these steps:

1. Clone the repository to your local machine using the following command:

   ```bash
   git clone https://github.com/lljon2240/ssh.git
   
   ```

2. Change into the project directory:

    ```bash
    cd project

    ```

3. Retrieve the ssh script files from the Git repository using the wget command:

    ```bash
    wget https://raw.githubusercontent.com/lljon2240/ssh/main/ssh_auto_cmd.sh

    ```

4. Download the addresses.csv file from the GitHub repository:

    ```bash
    wget https://github.com/codeforamerica/ohana-api/blob/master/data/sample-csv/addresses.csv

    ```

5. Change the file name from "oldfile.txt" to "newfile.txt" using the mv command:

    ```bash
    mv oldfile.txt newfile.txt

    ```

6. Give the script executable permissions by running the following command:

    ```bash
    chmod +x script.sh

    ```

## Usage

🔧 To execute the script, run the following command:
  
  ```bash
    ./script.sh
    
  ```
This will run the commands one by one, automatically executing each command in sequence.


