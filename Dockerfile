# Используйте официальный образ Node.js в качестве базового
FROM node:18-alpine

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем файлы package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем все файлы в рабочую директорию
COPY . .

# Устанавливаем переменные окружения postgres
ENV NODE_ENV production
ENV DATABASE_CLIENT sqlite
ENV DATABASE_HOST strapi_db
ENV DATABASE_PORT 5432
ENV DATABASE_NAME strapi
ENV DATABASE_USERNAME strapi_user
ENV DATABASE_PASSWORD strapi_password

# Запускаем команду для сборки приложения
RUN npm run build

# Открываем порт 1337 для доступа к Strapi
EXPOSE 1337

# Запускаем Strapi
CMD ["npm", "run", "start"]