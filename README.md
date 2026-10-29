# ISiT · GF26-02B

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=venom&height=220&color=0:0D1117,45:142B52,100:2563EB&text=ISiT%20%2F%2F%20GF26-02B&fontColor=FFFFFF&fontSize=42&fontAlignY=40&desc=Information%20Systems%20%26%20Technologies&descAlignY=60&descSize=16" width="100%" alt="ISiT GF26-02B" />
</p>

<p align="center">
  <strong>Учебный репозиторий группы</strong><br>
  Материалы семинаров · Совместная работа · Академические проекты
</p>

<p align="center">
  <a href="https://github.com/JetBape/ISIT_GF26-02B"><img src="https://img.shields.io/badge/GitHub-Repository-161B22?style=for-the-badge&logo=github&logoColor=white" alt="GitHub Repository"></a>
  <img src="https://img.shields.io/badge/Documents-Typst-239DAD?style=for-the-badge" alt="Typst">
  <img src="https://img.shields.io/badge/Output-PDF-B91C1C?style=for-the-badge&logo=adobeacrobatreader&logoColor=white" alt="PDF">
  <img src="https://img.shields.io/badge/Workflow-Branches%20%2B%20PR-2563EB?style=for-the-badge&logo=git&logoColor=white" alt="Git workflow">
</p>

---

## Навигация

<table>
  <tr>
    <td width="50%">
      <h3>📄 Шаблон реферата</h3>
      <p>Основной шаблон документа для подготовки семинарской работы.</p>
      <a href="./template.typ">Открыть template.typ →</a>
    </td>
    <td width="50%">
      <h3>📘 Инструкция</h3>
      <p>Порядок работы с GitHub, ветками и Pull Request.</p>
      <a href="./INSTRUCTION_RU.md">Открыть инструкцию →</a>
    </td>
  </tr>
  <tr>
    <td width="50%">
      <h3>🧩 Пример реферата</h3>
      <p>Пример структуры и оформления учебной работы.</p>
      <a href="./example_referat.typ">Посмотреть пример →</a>
    </td>
    <td width="50%">
      <h3>🗂️ Темы и задачи</h3>
      <p>Рабочие задачи, распределение и контроль выполнения.</p>
      <a href="https://github.com/JetBape/ISIT_GF26-02B/issues">Открыть Issues →</a>
    </td>
  </tr>
</table>

## О проекте

Этот репозиторий предназначен для организации совместной работы над семинарскими рефератами по дисциплине **«Информационные системы и технологии» (ИСиТ)**.

Здесь хранятся исходные документы, готовые PDF-файлы, инструкции и материалы, необходимые для подготовки работ.

### Основные принципы

- **Единый стандарт оформления** — используем общий шаблон Typst.
- **Совместная разработка** — работаем в отдельных ветках Git.
- **Прозрачность изменений** — фиксируем работу осмысленными коммитами.
- **Проверка результатов** — отправляем готовые материалы через Pull Request.
- **Воспроизводимость** — храним исходник `.typ` вместе с итоговым PDF.

## Рабочий процесс

<p align="center">
  <img src="https://img.shields.io/badge/01-Create%20Branch-1D4ED8?style=flat-square" alt="Step 1">
  →
  <img src="https://img.shields.io/badge/02-Write%20%26%20Commit-2563EB?style=flat-square" alt="Step 2">
  →
  <img src="https://img.shields.io/badge/03-Build%20PDF-0891B2?style=flat-square" alt="Step 3">
  →
  <img src="https://img.shields.io/badge/04-Pull%20Request-15803D?style=flat-square" alt="Step 4">
</p>

1. Создайте собственную ветку для работы.
2. Скопируйте шаблон в отдельный файл реферата.
3. Подготовьте текст и оформите источники.
4. Скомпилируйте документ в PDF.
5. Добавьте в ветку исходник и готовый PDF.
6. Создайте Pull Request в `main`.

### Пример структуры веток

```text
main
 ├── feat/ivanov-topic-1
 ├── feat/petrov-topic-2
 └── feat/sidorov-topic-3
```

Это пример именования, а не список существующих веток.

## Подготовка реферата

### 1. Создание ветки

Назовите ветку так, чтобы было понятно, кто и над какой темой работает.

```bash
git switch main
git pull origin main
git switch -c feat/ivanov-topic-1
```

### 2. Подготовка документа

Скопируйте `template.typ` и переименуйте копию, например, в `referat.typ`.

**Важно:** не редактируйте `template.typ` напрямую — он должен оставаться исходным шаблоном для следующих работ.

### 3. Компиляция в PDF

Установите [Typst](https://typst.app/) или воспользуйтесь веб-приложением Typst.

Команда для сборки документа:

```bash
typst compile referat.typ referat.pdf
```

### 4. Сохранение изменений

```bash
git add referat.typ referat.pdf
git commit -m "docs: add seminar paper"
git push -u origin feat/ivanov-topic-1
```

После этого откройте Pull Request в `main`.

Команды выше — пример рабочего процесса. При необходимости сначала синхронизируйтесь с актуальной версией репозитория и следуйте инструкции курса.

## Чек-лист перед сдачей

Перед отправкой Pull Request убедитесь, что:

- [ ] Все поля-подсказки заполнены или удалены.
- [ ] Документ успешно компилируется в PDF.
- [ ] Структура соответствует вопросам семинара.
- [ ] Есть введение, основная часть и заключение.
- [ ] Список источников оформлен и проверен.
- [ ] В репозитории присутствуют `.typ` и итоговый PDF.
- [ ] Изменения отправлены из отдельной ветки через Pull Request.

## Правила оформления

| Параметр | Требование |
|---|---|
| Исходный формат | Typst (`.typ`) |
| Итоговый формат | PDF |
| Шрифт | PT Serif |
| Основная ветка | `main` |
| Способ сдачи | Pull Request |
| Шаблон | `template.typ` |

- Используйте PT Serif, предусмотренный шаблоном.
- Не добавляйте файлы шрифтов в репозиторий.
- Не заменяйте исходный шаблон демонстрационным примером.
- Проверяйте, что PDF соответствует актуальному исходнику.
- Сроки сдачи определяются требованиями соответствующего семинара.

## Структура проекта

```text
ISIT_GF26-02B/
├── README.md              # Главная страница проекта
├── template.typ           # Исходный шаблон реферата
├── example_referat.typ    # Пример структуры документа
├── INSTRUCTION_RU.md      # Инструкция для участников
└── ...                    # Работы и другие материалы
```

Список выше показывает основные файлы проекта; фактическое содержимое репозитория может отличаться.

---

<p align="center">
  <strong>ISiT · GF26-02B</strong><br>
  <sub>Один репозиторий. Единые правила. Совместная работа.</sub>
</p>

<p align="center">
  <a href="https://github.com/JetBape/ISIT_GF26-02B">GitHub Repository</a>
</p>
