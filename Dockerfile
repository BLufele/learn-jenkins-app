FROM mcr.microsoft.com/playwright:v1.39.0-jammy
RUN npm config set strict-ssl false npm install -g netlify-cli node-jq yarn 
