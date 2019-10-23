class Api {
  static const String register = '/api/index/index?method=register';
  static const String login = '/api/index/index?method=login';
  static const String sendSms = '/api/index/index?method=sendSms';
  static const String authentication = '/api/index/index?method=authentication';
  static const String getAuthenticationState = '/api/index/index?method=get_authentication_state';
  static const String changePassword = '/api/index/index?method=change_password';
  static const String resetPasswords = '/api/index/index?method=reset_passwords';
  static const String setGesturePwd = '/api/index/index?method=set_gesture_pwd';
  static const String checkGesturePwd = '/api/index/index?method=check_gesture_pwd';
  static const String checkDealPwd = '/api/index/index?method=check_deal_pwd';
  static const String checkLoginPwd = '/api/index/index?method=check_login_pwd';
  static const String isSetDealPwd = '/api/index/index?method=is_set_deal_pwd';

  static const String activityBounced = '/api/index/index?method=activity_bounced';

  static const String validationBankCardNum = '/api/index/index?method=validation_bank_card_num';

  static const String bannerList = '/api/index/index?method=banner_list';
  static const String unreadMsg = '/api/index/index?method=unread_msg';
  static const String generationAlsoRecord = '/api/index/index?method=Generation_also_record';
  static const String messageList = '/api/index/index?method=message_list';
  static const String cityList = '/api/index/index?method=city_list';
  static const String checkVersion = '/api/index/index?method=check_version';
  static const String cityMerchantsList = '/api/index/index?method=city_merchants_list';
  /// 直接当URL 打开web
  static const String registrationProtocol = 'https://m.xliank.com/api/share/registration_protocol?platform=xinlianka';
  /// 直接当URL 打开web
  static const String usingHelp = 'https://m.xliank.com/api/share/using_help';


  static const String getWxOpenid = '/api/index/index?method=get_wx_openid';
  static const String contactWe = '/api/index/index?method=contact_we';

  static const String addSavings = '/api/index/index?method=add_savings';
  static const String updateSavings = '/api/index/index?method=update_savings';
  static const String addCredit = '/api/index/index?method=add_credit';
  static const String updateCredit = '/api/index/index?method=update_credit';
  static const String delSavings = '/api/index/index?method=del_savings';
  static const String delCredit = '/api/index/index?method=del_credit';
  static const String creditCardList = '/api/index/index?method=credit_card_list';
  static const String savingsCardList = '/api/index/index?method=savings_card_list';
  static const String userIndex = '/api/index/index?method=user_index';
  /// 修改头像昵称及个性签名
  static const String editUserInfo = '/api/index/index?method=edit_user_info';
  /// 修改实名认证信息
  static const String editRealName = '/api/index/index?method=edit_real_name';
  /// 代还计划反馈
  static const String feedback = '/api/index/index?method=feedback';
  static const String userEarnings = '/api/index/index?method=user_earnings';
  static const String rewardWithdrawal = '/api/index/index?method=reward_withdrawal';
  static const String beansWithdrawal = '/api/index/index?method=beans_withdrawal';
  static const String addCallRewardWithdrawalredit = '/api/index/index?method=addCall_reward_withdrawalredit';
  static const String allBeansWithdrawal = '/api/index/index?method=all_beans_withdrawal';
  static const String userWithdrawalRecord = '/api/index/index?method=user_withdrawal_record';
  static const String userDealRecord = '/api/index/index?method=user_deal_record';
  static const String userUpgradePage = '/api/index/index?method=user_upgrade_page';
  static const String userUpgradeConfirm = '/api/index/index?method=user_upgrade_confirm';
  static const String userUpgradeConfirmH5 = '/api/index/index?method=user_upgrade_confirm_h5';
  static const String upgradeOther = '/api/index/index?method=upgrade_other';
  static const String upgradeOtherList = '/api/index/index?method=upgrade_other_list';
  static const String getMoneyLog = '/api/index/index?method=get_money_log';
  static const String jpushList = '/api/index/index?method=jpush_list';
  static const String jpushInfo = '/api/index/index?method=jpush_info';
  static const String getBankList = '/api/index/index?method=get_bank_list';
  static const String agencyCenter = '/api/index/index?method=agency_center';
  static const String channelList = '/api/index/index?method=channel_list';
  static const String detectionChannelAuthentication = '/api/index/index?method=detection_channel_authentication';
  static const String messagePageList = '/api/index/index?method=message_page_list';
  static const String popularizeList = '/api/index/index?method=popularize_list';
  static const String awaitActivateUserList = '/api/index/index?method=await_activate_user_list';
  static const String notContinueUseUserList = '/api/index/index?method=not_continue_use_user_list';
  static const String todayDddUserList = '/api/index/index?method=today_add_user_list';
  static const String clickTag = '/api/index/index?method=click_tag';


  // GET方式
  static const String getShareData = '/api/share/get_share_data';

  static const String makeRefundPlan = '/api/index/index?method=make_refund_plan';
  static const String refundPlanList = '/api/index/index?method=refund_plan_list';
  static const String refundPlanDetails = '/api/index/index?method=refund_plan_details';
  static const String confirmPlan = '/api/index/index?method=confirm_plan';
  static const String stopRefund = '/api/index/index?method=stop_refund';
  static const String continueWork = '/api/index/index?method=continue_work';
  static const String cloudBrush = '/api/index/index?method=cloud_brush';
  static const String getMoTimes = '/api/index/index?method=get_mo_times';
 
  static const String startMoneyHint = '/api/index/index?method=start_money_hint';
  static const String cloudBrushList = '/api/index/index?method=cloud_brush_list';
  static const String cloudBrushDetails = '/api/index/index?method=cloud_brush_details';
  /// 云刷默认地区
  static const String defaultAddress = '/api/index/index?method=default_address';
  /// 修改计划执行时间
  static const String updatePlanDate = '/api/index/index?method=update_plan_date';
  /// 修改计划执行时间范围
  static const String updatePlanDateRange = '/api/index/index?method=update_plan_date_range';


  static const String channelAuthentication = '/api/index/index?method=channel_authentication';
  static const String confirmChannelAuthentication = '/api/index/index?method=confirm_channel_authentication';
  static const String delHtml = '/api/index/index?method=del_html';

  static const String clubCardList = '/api/index/index?method=club_card_list';
  static const String upLevel = '/api/index/index?method=up_level';
  static const String sendCard = '/api/index/index?method=send_card';
  static const String sellMoney = '/api/index/index?method=sell_money';
  static const String applySell = '/api/index/index?method=apply_sell';
  /// 会员卡交易列表
  static const String clubCardTradingList = '/api/index/index?method=club_card_trading_list';
  

  // static const String token_check = '/api/index/index?method=add_credit';
  
  static const String sellCardList = '/api/index/index?method=sell_card_list';
  static const String mySellCard = '/api/index/index?method=my_sell_card';
  static const String cancelSellCard = '/api/index/index?method=cancel_sell_card';
  static const String sellCardDetails = '/api/index/index?method=sell_card_details';
  static const String buySellCard = '/api/index/index?method=buy_sell_card';
  static const String bannedClubCard = '/api/index/index?method=banned_club_card';

  // 待领取卡豆页面
  static const String awaitReceiveBeansPage = "/api/index/index?method=await_receive_beans_page";
  // 用户领取卡豆
  static const String userReceiveBeans = '/api/index/index?method=user_receive_beans';
  static const String userReceiveBeansMonth = '/api/index/index?method=user_receive_beans_month';
  static const String promoteAssessHistory = '/api/index/index?method=promote_assess_history';

}