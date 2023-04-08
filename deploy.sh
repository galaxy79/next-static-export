# Search for "replace-me" text and replace the value before running the shell script
set -e
# Generate Nextjs static export
npm run build
# Create the AWS S3 and other infra based on the AWS SAM template.yml
sam deploy --stack-name <replace-me> --resolve-s3 --capabilities CAPABILITY_IAM  --profile <replace-me> --region <replace-me>
# Copy contents from out folder to s3 bucket
aws s3 cp out/ s3://<replace-me> --recursive --cache-control max-age=31536000 --profile <replace-me> --region <replace-me>
# Create invalidation of the cloudfront DL (required only after first deployment)
aws cloudfront create-invalidation --distribution-id <replace-me> --paths '/*' --profile <replace-me> --region <replace-me>