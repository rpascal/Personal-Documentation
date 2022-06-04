# Cloudfront and serving compressed files


## Updating s3 bucket
Need to configure CORS on bucket containing files
```json
[
    {
        "AllowedHeaders": [
            "Authorization",
            "Content-Length",
            "Accept-Encoding", // may or may not be needed (more digging needed)
            "Content-Encoding" // may or may not be needed (more digging needed)
        ],
        "AllowedMethods": [
            "GET"
        ],
        "AllowedOrigins": [
            "*"
        ],
        "ExposeHeaders": [],
        "MaxAgeSeconds": 3000
    }
]
```
[stackoverflow linke](https://stackoverflow.com/questions/35590622/cloudfront-with-s3-website-as-origin-is-not-serving-gzipped-files)
## Updating CloudFront

You can enable cloudfron to do it for you under `Behaviors`

[Dev Guide Serving Compressed Files](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html?icmpid=docs_cf_help_panel)

## Post updates

After all changed are applied run invalidation
`CloudFront > Distributions > Invalidations > Create Invalidation of "/*"`

## Verify
Using Network Tab in chrome you should be able to see `Content-Encoding: {encoding}` if so we are good