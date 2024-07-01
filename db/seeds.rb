10.times do |b|
    Blog.create!(
        title:"My blog Post #{b}" ,
        body:"Blogs are a type of regularly updated websites that provide insight into a certain topic. The word blog is a combined version of the words “web” and “log.” At their inception, blogs were simply an online diary where people could keep a log about their daily lives on the web. "
    )
end

5.times do |s|
    Skill.create!(
        title:"Rails #{s}",
        percent: 85
    )
end

puts "5skills created"

9.times do |p|
    Portfolio.create!(
        title: "Portfolio title #{p}",
        subtitle: "Subtitle ",
        body: " Body for this Portfolio",
        main_image: " https://place-hold.it/600x400",
        thumb_image: "https://place-hold.it/350x200 "
    )
end
puts "9 portfolios created"