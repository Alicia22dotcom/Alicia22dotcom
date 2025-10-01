// Example book list with images
const books = [
  { title: "The Lion and the Mouse", author: "Aesop", img: "images/book1.jpg" },
  { title: "Cinderella", author: "Charles Perrault", img: "images/book2.jpg" },
  { title: "The Hare and the Tortoise", author: "Aesop", img: "images/book3.jpg" },
  { title: "Snow White", author: "Brothers Grimm", img: "images/book4.jpg" },
  { title: "The Boy Who Cried Wolf", author: "Aesop", img: "images/book5.jpg" },
];

const bookList = document.getElementById("book-list");

books.forEach(book => {
  const div = document.createElement("div");
  div.className = "book";
  div.innerHTML = `<img src="${book.img}" alt="${book.title}" style="width:100%; border-radius:8px;"><h3>${book.title}</h3><p>by ${book.author}</p>`;
  bookList.appendChild(div);
});
