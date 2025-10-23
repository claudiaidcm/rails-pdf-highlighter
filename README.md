# 📄 Rails PDF Text Extractor

A lightweight Ruby on Rails **8.0** application that extracts text from uploaded PDF files and returns the structured content as JSON.

---

## 🚀 Features

- Extracts text from uploaded PDFs using the [`pdf-reader`](https://github.com/yob/pdf-reader) gem  
- Returns extracted text in structured JSON format (with page, line, and coordinate details)
- Simple API endpoint (e.g., `/pdf/process`) for easy integration

---

## 🧰 Requirements

- **Ruby**: 3.4.7  
- **Rails**: 8.0.0  
- **SQLite3** (default development database)  

---

## ⚙️ Setup

1. **Install dependencies**
   ```bash
   bundle install
   ```

2. **Set up the database**
   ```bash
   rails db:setup
   ```

3. **Run the server**
   ```bash
   rails s
   ```

4. Visit the app at  
   👉 [http://localhost:3000](http://localhost:3000)

---

## 🧾 Example JSON Output

When you upload or process a PDF, the API returns structured text data like this:

```json
[
  {
    "page": 1,
    "lines": [
      {
        "y": 722.28,
        "text_groups": [
          { "x": 57.375, "width": 235.548, "text": "A Simple PDF File" }
        ]
      },
      {
        "y": 688.608,
        "text_groups": [
          { "x": 69.25, "width": 176.17, "text": "This is a small demonstration .pdf file -" }
        ]
      }
    ]
  },
  {
    "page": 2,
    "lines": [
      {
        "y": 722.28,
        "text_groups": [
          { "x": 57.375, "width": 232.551, "text": "Simple PDF File 2" }
        ]
      }
    ]
  }
]
```

---

## 🧪 API Endpoint Example

**POST /pdf/process**

| Parameter | Type | Description |
|------------|------|-------------|
| `file` | PDF | The PDF file to process |

**Response:** JSON structure with pages, line coordinates, and text groups.

---

## 🧩 Tech Stack

- Ruby on Rails 8.0  
- Ruby 3.4.7  
- pdf-reader gem  
- SQLite3 (development)

