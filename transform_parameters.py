#!/usr/bin/env python3
import json
import os
import re

def transform_parameters(source_file, dest_file, environ_from='uat', environ_to='prod'):
    """
    Transform parameter files from one environment to another.
    Changes names and references from UAT to PROD.
    """
    with open(source_file, 'r') as f:
        params = json.load(f)
    
    # Create new parameter object
    new_params = {
        "$schema": params["$schema"],
        "contentVersion": params["contentVersion"],
        "parameters": {}
    }
    
    # Transform each parameter name and value
    for param_name, param_data in params["parameters"].items():
        # Transform parameter name
        new_param_name = param_name.replace('_'+environ_from+'_', '_'+environ_to+'_')
        new_param_name = new_param_name.replace('_'+environ_from, '_'+environ_to)
        
        # Transform value if it's a string and contains the environment name
        if isinstance(param_data.get("value"), str) and environ_from in param_data["value"]:
            param_data["value"] = param_data["value"].replace(environ_from, environ_to)
        
        # Add to new parameters
        new_params["parameters"][new_param_name] = param_data
    
    # Write the new parameters file
    os.makedirs(os.path.dirname(dest_file), exist_ok=True)
    with open(dest_file, 'w') as f:
        json.dump(new_params, f, indent=4)
    
    print(f"Transformed {source_file} -> {dest_file}")

def process_directory(source_dir, dest_dir, environ_from='uat', environ_to='prod'):
    """
    Process all parameter files in a directory.
    """
    if not os.path.exists(source_dir):
        print(f"Source directory {source_dir} does not exist!")
        return
    
    os.makedirs(dest_dir, exist_ok=True)
    
    for filename in os.listdir(source_dir):
        if filename.endswith('.json'):
            source_file = os.path.join(source_dir, filename)
            dest_file = os.path.join(dest_dir, filename)
            transform_parameters(source_file, dest_file, environ_from, environ_to)

if __name__ == "__main__":
    # Change these paths to match your actual directory structure
    process_directory('.', 'parameters/prod', 'uat', 'prod')