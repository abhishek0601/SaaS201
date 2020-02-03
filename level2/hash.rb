book = []
books = ["Design as Art","Anathem","Shogun"]
authors = ["Bruno Munart","Neal Stephenson","James Clavell"]
for i in 0..books.length-1
     book[(authors[i].split)[0].downcase.to_sym] = books[i]
end
