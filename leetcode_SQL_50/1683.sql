SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content)>15
-- LENGTH function gives us the number of bytes used in the content string, now according to our question we are only having alphanumeric characters, !, or ' ', so any of these characters will be represented using 1 byte only. But generally that is not the case bcz maybe a character takes 2 bytes of memory => LENGTH will give us a wrong result for that case, so we should use CHAR_LENGTH to find the number of characters in a given string instead of LENGTH func. 