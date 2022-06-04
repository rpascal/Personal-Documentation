s3_location="some bucket"
cloud_front_distribution_id="some id"

echo "S3 location: ${s3_location}"
echo "Distribution Id: ${cloud_front_distribution_id}"

echo "Building"
npm run build

echo "Removing Old files"
aws s3 rm $s3_location --recursive

echo "Sycning new files"
aws s3 sync ./build $s3_location

echo "Invalidating cloudfront distribution"
aws cloudfront create-invalidation --distribution-id "${cloud_front_distribution_id}" --paths '/*'

#  TODO read previous response to get the id of the invalidation and poll
# aws cloudfront wait invalidation-completed --distribution-id $CloudFrontDistributionId --id I3UQXMDE3XDWF6

echo "Done"