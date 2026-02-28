FROM node:22

WORKDIR /app

# Встановлюємо OpenClaw глобально
RUN npm install -g openclaw

# Railway передає DATABASE_URL автоматично при лінкуванні Postgres сервісу
# Формат: postgresql://user:password@host:port/dbname
ENV DATABASE_URL=""

# Railway використовує PORT змінну
ENV PORT=3000

EXPOSE 3000

CMD ["openclaw", "run"]
