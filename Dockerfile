# Gunakan Nginx versi ringan sebagai sistem operasi dasarnya[cite: 3]
FROM nginx:alpine

# Hapus file HTML bawaan Nginx[cite: 3]
RUN rm -rf /usr/share/nginx/html/*

# Salin file index.html buatan kita ke dalam folder publik Nginx[cite: 3]
COPY index.html /usr/share/nginx/html/

# Buka port 80 agar website bisa diakses[cite: 3]
EXPOSE 80