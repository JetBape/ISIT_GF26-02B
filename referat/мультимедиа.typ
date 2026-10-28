// Шаблон реферата СФУ по СТУ 7.5–07–2021
// Один файл: откройте в Typst и замените поля в блоке «ДАННЫЕ РАБОТЫ».
// Основа: SibFU-template, адаптированная для реферата, а не ВКР.

#set document(title: "Реферат", author: "")
#set page(
  paper: "a4",
  margin: (top: 20mm, bottom: 20mm, left: 30mm, right: 10mm),
  numbering: none,
)

// ── ДАННЫЕ РАБОТЫ: замените значения в кавычках ──────────────
#let university = "СИБИРСКИЙ ФЕДЕРАЛЬНЫЙ УНИВЕРСИТЕТ"
#let institute = "Гуманитарный институт"
#let department = "[Полное название кафедры]"
#let discipline = "Информационные системы и технологии"
#let topic = "[Название темы реферата]"
#let teacher = "[Преподаватель]"
#let group = "ГФ26-02Б"
#let students = "[Участники работы]"
#let city = "Красноярск"
#let year = "2026"

// ── ТИТУЛЬНЫЙ ЛИСТ (СТУ 7.5–07–2021, приложение Н) ───────────
#set text(font: "Times New Roman", size: 14pt, lang: "ru")

#align(center)[
  Министерство науки и высшего образования Российской Федерации \
  #text(weight: "bold")[Федеральное государственное автономное образовательное учреждение высшего образования] \
  #text(weight: "bold")[#university]
]

#v(1.2em)

#align(center)[
  #institute \
  #department
]

#v(3.0em)

#align(center)[
  #text(weight: "bold")[РЕФЕРАТ] \
  по дисциплине «#discipline» \
  на тему: \
  #text(weight: "bold")[#topic]
]

#v(3.0em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 12mm,
  align: (left, left),
  [
    Преподаватель \
    #v(2.8em)
  ],
  [
    #teacher \
    #v(2.8em)
  ],
)

#v(2.0em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 12mm,
  align: (left, left),
  [
    Студент(ы) \
    Группа: #group \
    #v(2.8em)
  ],
  [
    #students \
    #v(2.8em)
  ],
)

#place(bottom + center, text(size: 14pt)[#city #year])

#pagebreak()

// ── ОСНОВНОЙ ДОКУМЕНТ ────────────────────────────────────────
#set page(
  paper: "a4",
  margin: (top: 20mm, bottom: 20mm, left: 30mm, right: 10mm),
  numbering: "1",
  number-align: center + bottom,
)
#set text(font: "Times New Roman", size: 14pt, lang: "ru", hyphenate: true)
#set par(
  leading: 0.5em,
  first-line-indent: 12.5mm,
  justify: true,
)
#set heading(numbering: "1.1.1")

#show heading.where(level: 1): it => {
  set text(size: 14pt, weight: "bold")
  set align(center)
  set par(first-line-indent: 0pt)
  v(1em)
  upper(it.body)
  v(0.5em)
}
#show heading.where(level: 2): it => {
  set text(size: 14pt, weight: "bold")
  set par(first-line-indent: 0pt)
  v(0.75em)
  it
  v(0.5em)
}
#show heading.where(level: 3): it => {
  set text(size: 14pt, weight: "bold", style: "italic")
  set par(first-line-indent: 0pt)
  v(0.5em)
  it
  v(0.25em)
}
#set enum(numbering: "1.", indent: 12.5mm, body-indent: 5mm)
#set list(indent: 12.5mm, body-indent: 5mm, marker: "–")

// Для ссылок используйте квадратные скобки: [1], [1, с. 15].
// Заголовки структурных элементов оформляйте без нумерации.

#align(center)[#text(weight: "bold")[ВВЕДЕНИЕ]]

Здесь напишите введение: актуальность темы, цель и задачи работы, объект и предмет исследования (если требуются), методы и структуру реферата. Ссылки на источники указывайте в квадратных скобках, например [1] или [2, с. 15].

= Основная часть

== Первый раздел

Замените этот текст содержанием реферата. Основной текст оформляется по ширине страницы с абзацным отступом 12,5 мм.

=== Подраздел при необходимости

Добавьте текст подраздела. При необходимости включайте таблицы, рисунки и формулы, сопровождая их подписями и ссылками в тексте.

#pagebreak()

#align(center)[#text(weight: "bold")[ЗАКЛЮЧЕНИЕ]]

Здесь сформулируйте основные выводы по теме и покажите, как они соотносятся с целью и задачами, поставленными во введении.

#pagebreak()

#align(center)[#text(weight: "bold")[СПИСОК ИСПОЛЬЗОВАННЫХ ИСТОЧНИКОВ]]

+ Автор. Название источника. — Город: Издательство, год. — Количество страниц.

+ Название организации. Название страницы или документа. URL: https://example.com (дата обращения: ДД.ММ.ГГГГ).
