# ---- Stage 1: Build Quarto site ----
FROM ghcr.io/quarto-dev/quarto:latest AS builder

# Set working directory
WORKDIR /app

# Copy your Quarto project
COPY . .

# Render the site (outputs to _site by default)
RUN quarto render

# ---- Stage 2: Serve with Nginx ----
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy generated site from builder stage
COPY --from=builder /app/_site /usr/share/nginx/html

# Expose 8080 instead of 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]