require 'library.rb' 

describe Library do
  it 'can find a specific book' do
    expect(subject.find_book('POODR')).to eq(:author => "Sandi Metz", :subject => "OOP", :title => "POODR")
  end

   it 'can add a new book' do
    # book = Library.new
    subject.add_book(title: 'Starting Out With Python', author: 'Tony Gaddis')
    expect(subject.list_books).to include(title: 'Starting Out With Python', author: 'Tony Gaddis')
   end

   it 'can remove a book' do
    # book = Library.new
    subject.remove_book('Starting Out With Python')
    expect(subject.list_books).not_to include('Starting Out With Python')
   end

   it 'can list all the books on a specific subject' do
    expect(subject.all_books_by_subject('OOP')).to eq([author: "Sandi Metz", subject: "OOP", title: "POODR"])
   end
end