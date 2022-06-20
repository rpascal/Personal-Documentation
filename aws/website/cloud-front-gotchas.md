# CloudFront Gotchas

## Routing

When hosting on cloudfront using a SPA there can be issues with routing. 

You want to serve `https://domain.com/contact` but the will not work by default. On s3 the file for that page is in  `/contact/index.html`. We can solve this using a cloud funtion. See this for [example](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/example-function-add-index.html)

```javascript
function handler(event) {
    var request = event.request;
    var uri = request.uri;
    
    // Check whether the URI is missing a file name.
    if (uri.endsWith('/')) {
        request.uri += 'index.html';
    } 
    // Check whether the URI is missing a file extension.
    else if (!uri.includes('.')) {
        request.uri += '/index.html';
    }

    return request;
}
```

That can be added as a cloud funtion then connected to distribution. 