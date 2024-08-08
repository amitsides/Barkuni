import boto3

## see : https://www.saisci.com/aws/list-of-public-ssm-parameters-for-amazon-linux-amis-ami-amazon-linux-latest/

if __name__ == "__main__":

  ssm_client = boto3.client('ssm')

  paginator = ssm_client.get_paginator('get_parameters_by_path')
  page_iterator = paginator.paginate(Path="/aws/service/ami-amazon-linux-latest/")

  ssm_param_name_list = []

  for page in page_iterator:
    for parameter in page['Parameters']:
      ssm_param_name_list.append(parameter['Name'])

  ssm_param_name_list.sort()
  for ssm_param_name in ssm_param_name_list:
    print(ssm_param_name)