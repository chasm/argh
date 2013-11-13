Article.destroy_all

articles = Article.create([
  {
    title: "My First Article",
    body: "Here is the corpus. Delictum.",
    published: false
  },
  {
    title: "My Second and Better Article",
    body: "Lorem ipsum dolor sit amet.",
    published: true
  }
])

comments = Comment.create([
  {
    author: "Chas.",
    body: "This article is a bit short.",
    article: articles[0]
  },
  {
    author: "Wm.",
    body: "Yes it is.",
    article: articles[0]
  },
  {
    author: "Ed.",
    body: "This article is a bit boring.",
    article: articles[1]
  }
])

