# Node.jsの公式イメージを使用
FROM node:14

# 作業ディレクトリを設定
WORKDIR /app

# package.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# ソースコードをコピー
COPY . .

# 開発サーバーのポートを開放
EXPOSE 3000

# Reactアプリケーションを実行
CMD ["npm", "start"]
