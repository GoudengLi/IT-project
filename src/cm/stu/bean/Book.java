package cm.stu.bean;

public class Book {

    private String title;
    private String author;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Book{" +
                "title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", id=" + id +
                ", BookSrc='" + BookSrc + '\'' +
                ", BookContent='" + BookContent + '\'' +
                '}';
    }

    private int id;

    private String BookSrc;

    public String getBookContent() {
        return BookContent;
    }

    public void setBookContent(String bookContent) {
        BookContent = bookContent;
    }

    private String BookContent;


    public String getBookSrc() {
        return BookSrc;
    }

    public void setBookSrc(String bookSrc) {
        BookSrc = bookSrc;
    }



    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

}
