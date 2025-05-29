# 1. Usar uma imagem base oficial do Nginx
FROM nginx:alpine

# 2. Remover o conteúdo padrão da pasta html do Nginx (opcional, mas bom para limpeza)
RUN rm -rf /usr/share/nginx/html/*

# 3. Copiar os arquivos do seu projeto (site estático) para a pasta html do Nginx
# O "." significa o diretório atual (raiz do seu projeto AtlantisBurguer-site)
# O "/usr/share/nginx/html/" é o diretório padrão onde o Nginx serve os arquivos
COPY . /usr/share/nginx/html/

# 4. Expor a porta 80 (porta padrão HTTP que o Nginx usa)
EXPOSE 80

# 5. Comando para iniciar o Nginx em modo foreground quando o container iniciar
CMD ["nginx", "-g", "daemon off;"]
