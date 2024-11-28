# Makefile to setup and run BSGS algorithm for private key search

# Python executable
PYTHON = python3

# Python dependencies
PIP_REQUIREMENTS = requirements.txt

# Define the Python script
SCRIPT = bsgs.py

# Define starting and ending hex private keys
START_KEY = your_starting_private_key_hex_here
END_KEY = your_ending_private_key_hex_here

# Target to install dependencies
install:
	@echo "Installing required Python packages..."
	@pip install -r $(PIP_REQUIREMENTS)

# Target to run the BSGS algorithm
run:
	@echo "Running BSGS algorithm..."
	@$(PYTHON) $(SCRIPT) $(START_KEY) $(END_KEY)

# Clean up any generated files (optional)
clean:
	@echo "Cleaning up..."
	# Add any cleanup actions here (e.g., removing temporary files)

# Default target
all: install run
