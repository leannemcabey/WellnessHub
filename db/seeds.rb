mental=Category.create(name: 'Mental Heath')
relations=Category.create(name: 'Relationships')
therapy=Category.create(name: 'Therapy')
productivity=Category.create(name: 'Productivity')
mindfulness=Category.create(name: 'Mindfulness')
exercising=Category.create(name: 'Exercise')
nutrition=Category.create(name: 'Nutrition & Medicine')
sleeping=Category.create(name: 'Sleep')
reading=Category.create(name: 'Reading')

User.create(name: "Leanne", email: "leannecabey@mail.com", password: "1234567")

Intention.create(user_id: 1, name: 'Eat Clean', complete: 0)
Intention.create(user_id: 1, name: 'Stay Active', complete: 0)
Intention.create(user_id: 1, name: 'Be Present', complete: 0)
Post.create(title: 'Baked Goods for Eating Clean', address: '', comment: 'Bob’s Red Mill makes amazing baked good mixes with all natural ingredients.', url: 'https://www.bobsredmill.com', owner_id: 1)

Post.create(title: 'Down Dog App for Yoga', address: '', comment: 'This is a great app for customizing your yoga regimen. The girl’s voice is a little bit creepy though. Takes some getting used to.', url: 'https://www.downdogapp.com/', owner_id: 1)

Post.create(title: 'Daily Meditation on Headspace', address: '', comment: 'I really enjoy Headspace for short, daily meditation. You go through really useful exercises.', url: 'https://www.headspace.com/', owner_id: 1)

Post.create(title: 'Keep a Gratitude Journal', address: '', comment: 'Write down 1-3 you’re grateful for each day. Your overall happiness will improve!', url: 'https://www.headspace.com/', owner_id: 1)


PostCategory.create(post_id: 1, category_id: 7)
PostCategory.create(post_id: 2, category_id: 6)
PostCategory.create(post_id: 3, category_id: 5)
PostCategory.create(post_id: 3, category_id: 1)
PostCategory.create(post_id: 4, category_id: 5)
PostCategory.create(post_id: 4, category_id: 1)


UserPost.create(user_id: 1, post_id: 1, intention_id: 1)
UserPost.create(user_id: 1, post_id: 2, intention_id: 2)
UserPost.create(user_id: 1, post_id: 3, intention_id: 3)
UserPost.create(user_id: 1, post_id: 4, intention_id: 3)

sky=User.create(name: 'Skylar', email: 'skylar@fakeemail.com', password: '12345')



productive=Intention.create(user: sky, name: 'be more productive', complete:0)

Post.create(title: 'Why procrastinators procrastinate', comment:'', url: 'https://waitbutwhy.com/2013/10/why-procrastinators-procrastinate.html', owner: sky)
Post.create(title: 'Intro to Getting Things Done', comment:'Getting things done is a  organization system many people have found helpful. Read about it here.', url: 'https://zenkit.com/en/blog/a-beginners-guide-to-getting-things-done/', owner: sky)
PostCategory.create(post_id: 5, category:productivity)
PostCategory.create(post_id: 6, category:productivity)
UserPost.create(user: sky, post_id: 5, intention:productive)
UserPost.create(user: sky, post_id: 6, intention:productive)

read=Intention.create(user: sky, name: 'Read More Non-Fiction', complete:0)
Post.create(title:'The World Outside Your Head', comment:'Written by a social scientist,This book discusses how freedom comes from skill rather than comfort and how advertisements rob us of mental energy', url: 'https://www.goodreads.com/book/show/22237171-the-world-beyond-your-head', owner: sky)
Post.create(title: 'A History of God', comment: 'book about religion. Great read', url:"https://www.amazon.com/History-God-000-Year-Judaism-Christianity/dp/0345384563", owner: sky)
PostCategory.create(post_id: 7, category:reading)
PostCategory.create(post_id: 8, category:reading)
UserPost.create(user: sky, post_id: 7, intention:read)
UserPost.create(user: sky, post_id: 8, intention:read)

exercise=Intention.create(user:sky, name: 'exercise more', complete:0)
Post.create( title: '10 stetches for men', comment: '', url: 'https://www.mensjournal.com/health-fitness/10-best-stretches-men-according-10-trainers/', owner: sky)
Post.create( title: 'Benifits of Exercise', comment: '', url: 'https://www.healthline.com/nutrition/10-benefits-of-exercise', owner: sky)
PostCategory.create(post_id: 9, category:exercising)
PostCategory.create(post_id: 10, category:exercising)
UserPost.create(user: sky, post_id: 9, intention:exercise)
UserPost.create(user: sky, post_id: 10, intention:exercise)
