<?php
/**
 * @version 1.0
 * @copyright					:
 * @author						: Sunil Kumar <kumar.sunnyil@gmail.com>
 * Created  By				: Sunil Kumar
 * Created  On						:
 * Modified By						:
 * Modified On					:
 * Reviewed On					:
 * Reviewed By					:
 * Reviewer Comments	:
 * Description						:
 *
 */
class NetWorkUrlConstants{

	const TWITTER_HOME_API_URL = '/statuses/home_timeline.json';
	const TWITTER_FOLLOWERS_API_URL = 'followers/list.json';
	const TWITTER_MENTIONS_API_URL = 'statuses/mentions_timeline.json';
	const TWITTER_FAVORITE_API_URL = 'favorites/list.json';
	const TWITTER_TWEETS_API_URL = '/statuses/user_timeline.json';
	const TWITTER_FOLLOWER_API_URL = '/users/lookup.json';
	const TWITTER_USER_PROFILE_API_URL = '/users/show.json';
	const TWITTER_USER_TIMELINE_API_URL = '/statuses/user_timeline.json';
	const TWITTER_RETWEET_API_URL = 'statuses/retweet/';
	const TWITTER_UPDATE_API_URL = 'statuses/update.json';
	const TWITTER_REPLY_API_URL = 'statuses/update.json';
	const TWITTER_FAVOURITE_API_URL = 'favorites/create.json';
	const TWITTER_UNFAVOURITE_API_URL = 'favorites/destroy.json';
	const TWITTER_FOLLOWING_API_URL = '/users/lookup.json';

	const TUMBLR_DASHBOARD_API_URL = 'user/dashboard';
	const TUMBLR_BLOGS_API_URL = 'user/info';
	const TUMBLR_FOLLOWING_API_URL = 'user/following';
	const TUMBLR_LIKES_API_URL = 'user/likes';
	const TUMBLR_REBLOG_POST_API_URL = '/post/reblog';
	const TUMBLR_LIKE_POST_API_URL = 'user/like';
	const TUMBLR_UNLIKE_POST_API_URL = 'user/unlike';
	const TUMBLR_FOLLOWERS_API_URL = '/followers';
	const TUMBLR_USER_PROFILE_API_URL = '.tumblr.com/posts';

	const INSTAGRAM_HOME_API_URL = 'users/self/feed';
	const INSTAGRAM_POSTS_API_URL = '/media/recent';
	const INSTAGRAM_LIKES_API_URL = 'users/self/media/liked';
	const INSTAGRAM_FOLLOWING_API_URL = '/follows' ;
	const INSTAGRAM_FOLLOWERS_API_URL = '/followed-by' ;
	const INSTAGRAM_USER_PROFILE_API_URL = '/media/recent/';

	const FB_HOME_API_URL = '/home';
	const FB_GROUPS_API_URL = '/groups';
	const FB_FRIENDS_API_URL = '/me/taggable_friends';
	const FB_NOTIFICATION_API_URL = '/notifications';
	const FB_ALBUMS_API_URL = '/albums';
	const FB_LIKE_API_URL = 'https://graph.facebook.com/';
	const FB_SHARE_API_URL = '/dialog/feed';
	const FB_COMMENTS_API_URL = 'https://graph.facebook.com/';


	const APPGROUP_TWITTER_GROUP_API_URL = '/statuses/home_timeline.json';
	const APPGROUP_TUMBLR_GROUP_API_URL = 'user/dashboard';
	const APPGROUP_INSTAGRAM_GROUP_API_URL = 'users/self/feed';
	const APPGROUP_FB_GROUP_API_URL = '/home';


	const APPLIST_TWITTER_FRIENDS_API_URL = '/friends/list.json';
	const APPLIST_TUMBLR_FRIENDS_API_URL = '/followers';
	const APPLIST_INSTAGRAM_FRIENDS_API_URL = '/follows';
	const APPLIST_TWITTER_LIST_API_URL ='statuses/user_timeline.json';
	const APPLIST_TUMBLR_LIST_API_URL ='blog/vicenews.tumblr.com/posts/';
	const APPLIST_INSTAGRAM_LIST_API_URL ='/media/recent/';



}
