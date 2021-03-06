10.times do |blog|
    Blog.create!(
        title:"my blog post #{blog}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    )
end

puts"10 times blog post created"

5.times do |skill|
    Skill.create!(
        title:"rails #{skill}",
        percent_utilized: 15
    )
end

puts"5 times skills created"

9.times do |portfolio_item|
    Portfolio.create!(
        title:"Portfolio title #{portfolio_item}",
        subtitle: "my great feature", 
        body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit",
        main_image: "https://place-hold.it/600x400",
        thumb_image: "https://place-hold.it/350x200"

    )
end

puts"9 portfolio items created"

