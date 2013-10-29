recommended_items = [
  {
    title: 'United Center',
    description: 'Where the Bulls and Blackhawks play.  And occasionally the circus. The United Center, home to the Chicago Blackhawks and Chicago Bulls, is the largest arena in the United States. Construction was begun in April of 1992, with the ribbon cutting ceremony being held on August 18, 1994.

Since opening, the United Center has hosted over 200 events each year. Some of the events the United Center has been proud to host include the 1996 Democratic National Convention, The Rolling Stones, Eric Clapton, Bruce Springsteen and the E Street Band, Paul McCartney, U2, The Who, The 3 Tenors, Ringling Brothers and Barnum & Bailey Circus, Disney on Ice, the Big Ten Men\'s Basketball Tournament, the Men\'s NCAA Basketball Tournament, the Great Eight Classic, Illinois College Basketball, and Champions on Ice.

The United Center has hosted over forty million guests since its opening in 1994.',
    image_url: 'http://cbschicago.files.wordpress.com/2010/09/united-center-crowd.jpg'
  },
  {
    title: 'The Bean',
    description: 'Officially named "Cloud Gate," this tourist attraction provides a crazy perspective on things going on at both street-level and sky-level.',
    image_url: 'http://blogs.uoregon.edu/aad250zongchen/files/2013/06/the_bean_who_is_shooting_who__by_alierturk-d37beuy-z9htgx.jpg',
    free: true
  },
  {
    title: 'Adler Planetarium',
    description: 'Whether you have a full day or just an hour or two, we have admission passes to fit your interests. Take in immersive sky shows in our three full-sized theaters including the Definiti Theater, the newly renovated Samuel C. Johnson Family Star Theater, and the Grainger Sky Theater–the most technologically advanced theater in the world.',
    image_url: 'http://static.squarespace.com/static/50f07ce8e4b07454d6dd2f2f/t/5193d40be4b0af15cc414a08/1368642575057/adlr7bLR.jpg?format=500w'
  },
  {
    title: 'Apollo 13',
    description: 'True documentary about how reading error messages can save lives. Based on the true story of the ill-fated 13th Apollo mission bound for the moon. Astronauts Lovell, Haise and Swigert were scheduled to fly Apollo 14, but are moved up to 13. It\'s 1970, and America have already achieved their lunar landing goal, so there\'s little interest in this "routine" flight.. until that is, things go very wrong, and prospects of a safe return fade.',
    image_url: 'http://ia.media-imdb.com/images/M/MV5BMTM2Njg2NjU5NF5BMl5BanBnXkFtZTYwODI5MDc4._V1_SY226_SX144_.jpg'
  },
  {
    title: 'The PickAxe',
    description: 'The must-have reference for every professional Ruby developer.',
    image_url: 'http://imagery.pragprog.com/products/355/ruby4_xlargecover.jpg?1378671145'
  },
  {
    title: 'The Ruby on Rails Website',
    description: 'Find it at http://www.rubyonrails.org',
    image_url: 'http://rubyonrails.org/images/rails.png',
    free: true
  },
  {
    title: 'Peter Gabriel',
    description: 'Old as dirt but still going strong.  His first four albums were all named "Peter Gabriel" just to annoy his record label.  His 5th album, So, hit the charts hit back in 1987, but he still actively tours around the world and spearheads a variety of humanitarian efforts and organizations.',
    image_url: 'https://petergabriel.com/img/news/encore-news.jpeg'
  },
  {
    title: 'Chocolate Chip Cookies',
    description: 'The best recipe for chocolate chips.  Ever. http://www.verybestbaking.com/recipes/18476/original-nestl%C3%89-toll-house-chocolate-chip-cookies/detail.aspx',
    image_url: 'http://www.meals.com/imagesrecipes/18476lrg.jpg'
  }
]

Item.destroy_all

recommended_items.each do |item_info|
  i = Item.new
  i.title = item_info[:title]
  i.description = item_info[:description]
  i.image_url = item_info[:image_url]
  i.free = true if item_info[:free]
  i.save
end

puts "There are now #{Item.count} items in the database."

