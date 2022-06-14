require 'aws-sdk-core'

terraform_json = `terraform output --json`
params = JSON.parse(terraform_json)

names = params['names']['value']

names.each do |name|
  describe command("aws --profile inspec ssm get-parameter --name #{name}") do
      its('exit_status') { should eq 0}
  end
end
