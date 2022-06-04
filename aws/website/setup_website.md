# Setup website steps

Following [tutorial](https://aws.amazon.com/premiumsupport/knowledge-center/cloudfront-serve-static-website/)

## S3
- Create a bucket (`ryandpascal`)
- Keep the bucket private
- Upload files to bucket

## CloudFront

- Selete the bucket as the origin domain
- Select `Yes use OAI (bucket can restrict access to only CloudFront)`
  - Create New OIA
  - Select update policy
- Include alternative domain names
  - `ryandpascal.com`
  - `www.ryandpascal.com`
- For behaviors
  - Viewer protocol policy - select - `Redirect HTTP to HTTPS`
- Default root object
  - `index.html`
- Select `Request certificate`
  - Go to SSL section
- Once complete select the new certificate
- Create
- Once created copy
``` 
Distribution domain name
d66zzmc1ct8yy.cloudfront.net
```
Go back to namecheap and add another CNAME record
- `Host = @ `
- `Value = d66zzmc1ct8yy.cloudfront.net`

### Bonuses
- Update `Error Pages` to redirect in error cases
  - 403 -> `/index.html` -> repsonse code 200
  - 404 -> `/index.html` -> repsonse code 200

## SSL Certificate
- Enter domain name. Include code `www` and not
  - `www.ryandpascal.com`
  - `ryandpascal.com`
- Go to certificate
- Copy the CNAME name and values and go to where domain exists ( in this case namecheap )

### Namecheap Setup
From aws you will get something like 
```
_34eab4e5fc23d682361b49ed8a6fe998.www.ryandpascal.com.
_ecb22d2720c9c5e768a3d01cbe54d7da.ffbjkxtvyn.acm-validations.aws.

_bc9a01e71d3cffcda3f3d354090f1686.ryandpascal.com.
_a99ac46a952a089aa8a3400d331d6c08.ffbjkxtvyn.acm-validations.aws.
```
for the certificate. 
When copying in to namecheap for the `Host` do not include the domain. So you would only include 
- `_34eab4e5fc23d682361b49ed8a6fe998.www`
- `_bc9a01e71d3cffcda3f3d354090f1686`

Wait til certificate is Successful

---

![/images/cloudfront working](./images/cloudfront%20working%20behavior.png)
![/images/cloudfront working](./images/cloudfront%20working%20error%20pages.png)
![/images/cloudfront working](./images/cloudfront%20working.png)