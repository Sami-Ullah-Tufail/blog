
# Create users
user1 = User.create(name: 'John Doe', photo: 'https://picsum.photos/id/1/200/300', bio: 'Lorem ipsum...')
user2 = User.create(name: 'Jane Smith', photo: 'https://picsum.photos/id/2/200/300', bio: 'Dolor sit amet...')
user3 = User.create(name: 'Bob Johnson', photo: 'https://picsum.photos/id/3/200/300', bio: 'Consectetur adipiscing elit...')

# Create posts
post1 = Post.create(
  author: user1,
  title: 'First Post',
  text: 'This is the content of the first post. Lorem ipsum...',
  created_at: 1.day.ago
)

post2 = Post.create(
  author: user2,
  title: 'Another Post',
  text: 'Here is another post. Dolor sit amet...',
  created_at: 2.days.ago
)

post3 = Post.create(
  author: user3,
  title: 'Exciting News',
  text: 'Breaking news! Consectetur adipiscing elit...',
  created_at: 3.days.ago
)

# Create comments
Comment.create(user: user2, post: post1, text: 'Great post!')
Comment.create(user: user1, post: post2, text: 'Nice content.')
Comment.create(user: user3, post: post3, text: 'Interesting news!')

# Create likes
Like.create(user: user1, post: post2)
Like.create(user: user2, post: post1)
Like.create(user: user3, post: post3)
