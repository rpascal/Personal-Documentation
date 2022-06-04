# Amazon SES

If you plan on using Email Receiving make sure to use a valid region

### Email Receiving

- [Publishing MX Record](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-mx-record.html)

You must use one of the following regions (June 2021)

- US East (N. Virginia)
  - inbound-smtp.us-east-1.amazonaws.com
- US West (Oregon)
  - inbound-smtp.us-west-2.amazonaws.com
- Europe (Ireland)
  - inbound-smtp.eu-west-1.amazonaws.com

#### Monitoring

- To get emails you need to create a rule set
  - [Creating a receipt rule set for Amazon SES email receiving](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html?icmpid=docs_ses_console)

To receive emails for all emails sent to domain and subdomain use `Two recipients: example.com, .example.com`

One thing we can do with emails is creating an SNS topic to handle them [docs](./sns.md)

### Mail From

- [Using a custom MAIL FROM domain](https://docs.aws.amazon.com/ses/latest/dg/mail-from.html)

### Verification

- Use ses v2 to remove need to TXT record and only require CNAME for DKIM
  - For namecheap make sure not to include domain in DNS records when adding
    - `osjuydo2w6gz2kj6ehzlhigldtx7x4j5._domainkey.jook.app` -> `osjuydo2w6gz2kj6ehzlhigldtx7x4j5._domainkey`

### Tutorials

[Amazon Simple Email Service endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/ses.html)
[Regions and Amazon SES](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html#region-endpoints)
