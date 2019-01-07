FROM nginx:alpine

# establish where Nginx should look for files
ENV RAILS_ROOT /var/www/rails_test_app

# Set our working directory inside the image
WORKDIR $RAILS_ROOT

# copy over static assets
COPY public public/

COPY ./docker/web/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
