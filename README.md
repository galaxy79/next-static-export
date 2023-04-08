# Next.js Static Export

Next.js enables starting as a static site or Single-Page Application (SPA), then later optionally upgrading to use features that require a server.

When running `next build`, Next.js generates an HTML file per route. By breaking a strict SPA into individual HTML files, Next.js can avoid loading unnecessary JavaScript code on the client-side, reducing the bundle size and enabling faster page loads.

Learn more: https://beta.nextjs.org/docs/configuring/static-export

## Deploy to AWS S3 and Cloudfront

Run the shell script `deploy.sh` with aws credentials that has access to create the necessary infrastructures. Following services are created in this process,

1. S3 Bucket
2. Cloudfront Distribution
3. Cloudfront Functions
4. Update route 53 with a new A record for the cloudfront DL

Check out the blog [steps and details around nextjs deployment to s3](https://towardsserverless.com/articles/deploy-nextjs-13-static-export-website-aws-s3-cloudfront) for more information.