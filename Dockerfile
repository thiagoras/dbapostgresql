FROM postgres:14

# Instala o pacote locales e gera o locale pt_BR.UTF-8
RUN apt-get update && apt-get install -y locales \
    && locale-gen pt_BR.UTF-8 \
    && /usr/sbin/update-locale LANG=pt_BR.UTF-8

# Define as variáveis de ambiente (importante para o PostgreSQL usar o locale)
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR:pt
ENV LC_ALL pt_BR.UTF-8

# Copie um script SQL para ser executado na inicialização (opcional)
COPY init.sql /docker-entrypoint-initdb.d/
