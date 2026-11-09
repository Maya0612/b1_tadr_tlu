# 🎓 NỀN TẢNG ÔN THI CHUẨN ĐẦU RA B1 ĐHCQ — ĐẠI HỌC THỦY LỢI
### 📦 Bản Chuẩn Deploy Web (Production Ready — Tối Ưu Hóa Toàn Diện)

> **Hệ thống ôn luyện EdTech chuyên biệt:** Ứng dụng web tĩnh, sẵn sàng chạy trên máy cá nhân hoặc deploy lên **Cloudflare Pages, Vercel, Netlify, GitHub Pages** và các máy chủ web tĩnh khác.

---

## 🌟 ĐIỂM CẢI TIẾN TRÊN BẢN CHUẨN (PRODUCTION RELEASE)

1. **Dung lượng tối ưu < 100 MB (Chuẩn Cloudflare Pages Direct Upload):**
   - Nén chuẩn hóa toàn bộ 39 file audio MP3 sang định dạng `48kbps Mono Speech` chuyên dụng cho hội thoại thi tiếng Anh: âm thanh giọng bản ngữ trong trẻo, không rè nhiễu, tải nhanh gấp 3 lần trên 4G/di động.
   - Tổng dung lượng gói triển khai giảm từ **157 MB xuống còn ~75 MB**, vượt qua giới hạn khắt khe 100 MB của tính năng kéo thả Direct Upload trên Cloudflare Pages.
2. **Loại bỏ 100% mã thừa & rác cú pháp:**
   - Đã xử lý triệt để đoạn text rác `# Floating Audio Player...` bị chèn nhầm ở đầu trang.
   - Thêm bộ thẻ meta SEO, OpenGraph xã hội (Zalo, Facebook), Theme-color `#0f172a` và chuẩn hóa Mobile Web App notch display (`viewport-fit=cover`).
3. **Tích hợp Kho Tài Liệu PDF Gốc (11 File Chuẩn):**
   - Đổi tên toàn bộ 11 file PDF sang chuẩn URL-safe ASCII (loại bỏ tiếng Việt có dấu và dấu cách), khắc phục triệt để lỗi 404 trên các máy chủ Linux/CDN.
   - Bổ sung **Modal Kho Tài Liệu PDF (11 File)** và các nút xem trực tiếp / tải về ngay tại từng phân hệ tương ứng: Đề cương, Đề mẫu, Luyện nghe KET, Speaking Studio, Viết lại câu.
4. **Cấu hình Web Server Sẵn Sàng Đa Nền Tảng:**
   - `_headers`: Kích hoạt `Accept-Ranges: bytes`, CORS và Cache-Control tối đa cho file MP3/PDF trên Cloudflare Pages.
   - `_redirects`: Điều hướng SPA mượt mà cho Cloudflare Pages và Netlify.
   - `vercel.json`: Thiết lập header cache và cleanUrls cho Vercel.
   - `netlify.toml`: Thiết lập định tuyến và header cho Netlify.
   - `.nojekyll`: Ngăn chặn GitHub Pages bỏ qua thư mục bắt đầu bằng số/dấu gạch dưới.

## ✨ Chức năng luyện tập

* **Trắc nghiệm:** 220 câu, lưu lựa chọn hiện tại, lưu điểm từng lượt và làm lại toàn bộ hoặc theo chủ đề. Giải thích hiện có dựa trên quy tắc chung của câu; có thể bổ sung lời giải riêng cho từng lựa chọn trong dữ liệu câu hỏi.
* **Viết lại câu:** 100 câu thuộc 10 dạng riêng, chấp nhận các đáp án tương đương có trong dữ liệu; Enter kiểm tra, phím lên/xuống chuyển câu.
* **Speaking Studio:** sửa/lưu câu trả lời cá nhân theo từng câu/chủ đề, nghe đọc bằng giọng trình duyệt và yêu cầu nhận diện giọng nói nếu trình duyệt hỗ trợ.
* **Viết thư:** lưu bản nháp và lịch sử bài đã chấm. Điểm tham khảo là rubric hình thức tại trình duyệt, không đánh giá độ chính xác nội dung và không thay thế chấm của giảng viên.
* **Luyện nghe:** chọn KET 5/6/7, Test 1–4 và Part 1–3; phát audio tương ứng, mở trang đề scan, nhập lựa chọn, chấm điểm, xem đáp án/lịch sử. PDF câu hỏi và PDF đáp án/script là bản tách từ tài liệu người dùng cung cấp; script gốc mở trong trình đọc PDF của trình duyệt.

### Chỉnh sửa câu trả lời mẫu

* **Speaking:** có thể sửa trực tiếp ô trả lời trong Speaking Studio rồi bấm **Lưu câu trả lời** để cá nhân hóa trên trình duyệt hiện tại. Muốn sửa mẫu mặc định trong mã, tìm `APP_DATA` ở `index.html`: câu Part 2 nằm trong `speaking[].script`, Part 3 nằm trong `speaking[].part3[].a` và các câu bổ sung nằm ở `SPEAKING_PART3_EXTRA`.
* **Writing:** nội dung bài mẫu nằm trong `APP_DATA.letters[].sample` của `index.html`. Dữ liệu `APP_DATA` được khai báo thành một dòng JSON dài; nên tìm theo tên trường hoặc tiêu đề chủ đề và chỉ sửa nội dung `sample`.

---

## 🏛️ ĐỊNH HƯỚNG & CẤU TRÚC THI B1 THỦY LỢI

Hệ thống được thiết kế bám sát 100% cấu trúc đề cương học phần và ngân hàng đề thi chính thức của **Bộ môn Ngoại ngữ – Trường Đại học Thủy Lợi**:
* **Tổng điểm: 100 điểm** (Đạt chuẩn khi tổng điểm quy đổi $\ge$ 5.0).
* **Bài thi Viết (75 phút — 80 điểm):**
  * **Kỹ năng Nghe (15 phút — 20 điểm):** Part 1 Chọn tranh (5 câu - 7.5đ), Part 2 Nối thông tin (5 câu - 6.25đ), Part 3 Trắc nghiệm hội thoại (5 câu - 6.25đ).
  * **Kỹ năng Đọc (30 phút — 30 điểm):** Part 1 Từ vựng & ngữ pháp (10 câu - 10đ), Part 2 Biển báo (5 câu - 5đ), Part 3 Đọc hiểu đoạn văn Blue Moon (5 câu - 5đ), Part 4 Điền từ Cloze test bài Music (10 câu - 10đ).
  * **Kỹ năng Viết (30 phút — 30 điểm):** Part 1 Viết lại câu không đổi nghĩa (5 câu - 10đ), Part 2 Viết thư 80-100 từ (20đ).
* **Bài thi Vấn đáp Nói (8-10 phút — 20 điểm):**
  * Part 1: Phỏng vấn cá nhân (6 điểm).
  * Part 2: Thuyết trình theo chủ đề bốc thăm có dàn ý 3 phần (8 điểm).
  * Part 3: Trả lời câu hỏi mở rộng của giám khảo (6 điểm).

---

## 🚀 HƯỚNG DẪN DEPLOY LÊN WEB (CHỈ MẤT 1 PHÚT)

### 🥇 Cách 1: Deploy lên Cloudflare Pages (Khuyên Dùng — Miễn Phí, Siêu Nhanh, Không Giới Hạn Băng Thông)
1. Đăng nhập [pages.cloudflare.com](https://pages.cloudflare.com/) (tạo tài khoản miễn phí nếu chưa có).
2. Vào mục **Workers & Pages** $\rightarrow$ chọn tab **Pages** $\rightarrow$ bấm **Upload assets** (Direct Upload).
3. Đặt tên dự án (ví dụ: `b1-thuyloi` hoặc `onthib1`).
4. Kéo thả trực tiếp file zip chuẩn **`B1_Web_Deploy_Chuan.zip`** vào ô tải lên.
5. Bấm **Deploy site**. Sau khoảng 10–20 giây, bạn sẽ nhận được đường link web chính thức (ví dụ: `https://b1-thuyloi.pages.dev`) để gửi cho bạn bè cùng ôn tập!

### 🥈 Cách 2: Deploy lên Vercel
1. Cài đặt Vercel CLI (`npm i -g vercel`) hoặc liên kết repo GitHub với [vercel.com](https://vercel.com).
2. Chạy lệnh `vercel --prod` ngay trong thư mục giải nén.

### 🥉 Cách 3: Deploy lên Netlify
1. Đăng nhập [app.netlify.com](https://app.netlify.com/).
2. Kéo thả file `B1_Web_Deploy_Chuan.zip` (hoặc thư mục giải nén) vào ô **Sites / Drag and drop your site output folder here**.

### 💻 Chạy trên máy cá nhân
1. Mở thư mục dự án.
2. Mở Terminal tại thư mục chứa `index.html`, chạy `python -m http.server 8000`.
3. Mở `http://localhost:8000` bằng Chrome hoặc Edge. Dừng máy chủ bằng `Ctrl+C`.

**Không cần mở VS Code:** trên Windows, nhấp đúp `Chay_Web.bat`. Cửa sổ máy chủ sẽ mở riêng và trình duyệt tự vào trang web. Giữ cửa sổ máy chủ mở trong lúc sử dụng; đóng cửa sổ đó để dừng. Cần cài Python và lệnh `python` có trong `PATH`.

Có thể mở trực tiếp `index.html`, nhưng chạy qua máy chủ cục bộ đáng tin cậy hơn cho audio và quyền micro. Giao diện tải Tailwind CSS và phông chữ từ CDN nên cần Internet để hiển thị đầy đủ.

---

## 🔒 BẢO MẬT & LƯU TRỮ DỮ LIỆU
* Câu trả lời, lịch sử trắc nghiệm/viết thư và câu trả lời Speaking cá nhân được lưu trong `localStorage` của trình duyệt, trên thiết bị và địa chỉ web đang dùng.
* Chấm thư là rubric hình thức chạy tại trình duyệt, chỉ mang tính tham khảo và không dùng AI để xác nhận nội dung.
* Nhận diện giọng nói tùy khả năng/trình duyệt và quyền micro; nhà cung cấp nhận diện của trình duyệt có thể xử lý âm thanh theo chính sách riêng. Ứng dụng không lưu bản ghi âm.
* Lưu trữ trong trình duyệt không đồng bộ giữa thiết bị hoặc giữa các địa chỉ web khác nhau. Tailwind CSS và phông chữ được tải từ CDN.
* Các đề nghe trong PDF là ảnh scan. Nếu trình duyệt không hiển thị PDF nhúng, dùng liên kết mở PDF ở tab riêng.
