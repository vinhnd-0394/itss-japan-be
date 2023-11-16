# itss-japan-be

setup môi trường:
1. Tải node version: 16.20.2
2. Tải mysql version 8.xxx
3. clone project git về
4. mở terminal và chạy lệnh `npm i` để tải thư viện
5. sau khi tải thư viện, `cd ./src` sau đó chạy lệnh: `npx sequelize-cli db:migrate` để migration db.
6. insert data vào mysql bằng data.sql, hoặc tự thêm
7. run server chạy lệnh: `npm run dev`
