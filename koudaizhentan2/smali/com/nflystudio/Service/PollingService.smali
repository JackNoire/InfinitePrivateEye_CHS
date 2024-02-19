.class public Lcom/nflystudio/Service/PollingService;
.super Landroid/app/Service;
.source "PollingService.java"

# interfaces
.implements Lcom/nflystudio/net/ResponeObserver;


# instance fields
.field private volatile begindate:J

.field private gamebody:Ljava/lang/String;

.field private gameinfo:Lcom/nflystudio/Service/GameInfoItem;

.field private mManager:Landroid/app/NotificationManager;

.field private volatile notificationId:I

.field private switchs:Z

.field private timeDelay:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nflystudio/Service/PollingService;->notificationId:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nflystudio/Service/PollingService;->switchs:Z

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lcom/nflystudio/Service/PollingService;->timeDelay:I

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/nflystudio/Service/PollingService;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/nflystudio/Service/PollingService;->begindate:J

    return-wide v0
.end method

.method private getPerTime()J
    .locals 4

    .prologue
    .line 195
    const-string v1, "pertime"

    .line 196
    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0, v1, v2}, Lcom/nflystudio/Service/PollingService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    .local v0, "pertimesp":Landroid/content/SharedPreferences;
    const-string v1, "currenttime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private requestServer()V
    .locals 6

    .prologue
    .line 93
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/nflystudio/Service/PollingService$1;

    invoke-direct {v1, p0}, Lcom/nflystudio/Service/PollingService$1;-><init>(Lcom/nflystudio/Service/PollingService;)V

    .line 106
    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/nflystudio/Service/PollingService;->timeDelay:I

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    .line 93
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 107
    return-void
.end method

.method private saveCurrentTime(J)V
    .locals 4
    .param p1, "aCurrentTime"    # J

    .prologue
    .line 201
    const-string v2, "pertime"

    .line 202
    const/4 v3, 0x0

    .line 201
    invoke-virtual {p0, v2, v3}, Lcom/nflystudio/Service/PollingService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 203
    .local v1, "pertimesp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "currenttime"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void
.end method

.method private showNotification(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/nflystudio/Service/PollingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/nflystudio/Service/PollingService;->mManager:Landroid/app/NotificationManager;

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "mNotification":Landroid/app/Notification;
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "mNotification":Landroid/app/Notification;
    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 125
    .restart local v1    # "mNotification":Landroid/app/Notification;
    const/high16 v3, 0x7f020000

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 126
    iget-object v3, p0, Lcom/nflystudio/Service/PollingService;->title:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 127
    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 128
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/Notification;->when:J

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v3, "tomain"

    const-string v4, "tomain"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v3, "title"

    iget-object v4, p0, Lcom/nflystudio/Service/PollingService;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/4 v3, 0x0

    .line 146
    const/high16 v4, 0x10000000

    .line 145
    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 149
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/nflystudio/Service/PollingService;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/nflystudio/Service/PollingService;->gamebody:Ljava/lang/String;

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 150
    iget v3, p0, Lcom/nflystudio/Service/PollingService;->notificationId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nflystudio/Service/PollingService;->notificationId:I

    .line 151
    iget-object v3, p0, Lcom/nflystudio/Service/PollingService;->mManager:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/nflystudio/Service/PollingService;->notificationId:I

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 152
    return-void
.end method


# virtual methods
.method public ResponeData(Lcom/nflystudio/net/BaseRespone;I)V
    .locals 7
    .param p1, "aRespone"    # Lcom/nflystudio/net/BaseRespone;
    .param p2, "aResponeType"    # I

    .prologue
    const/4 v6, 0x0

    .line 159
    packed-switch p2, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget v4, p1, Lcom/nflystudio/net/BaseRespone;->status:I

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    if-eqz v4, :cond_0

    .line 162
    iget-object v1, p1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    check-cast v1, Lcom/nflystudio/net/PushData;

    .line 163
    .local v1, "pushData":Lcom/nflystudio/net/PushData;
    iget-object v2, v1, Lcom/nflystudio/net/PushData;->pushDataList:Ljava/util/ArrayList;

    .line 164
    .local v2, "pushDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nflystudio/Service/PushDateItem;>;"
    iget-wide v4, v1, Lcom/nflystudio/net/PushData;->currentservertime:J

    iput-wide v4, p0, Lcom/nflystudio/Service/PollingService;->begindate:J

    .line 165
    iget-wide v4, p0, Lcom/nflystudio/Service/PollingService;->begindate:J

    invoke-direct {p0, v4, v5}, Lcom/nflystudio/Service/PollingService;->saveCurrentTime(J)V

    .line 167
    iget-object v4, v1, Lcom/nflystudio/net/PushData;->pushDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 171
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nflystudio/Service/PushDateItem;

    .line 172
    .local v3, "pushDateItem":Lcom/nflystudio/Service/PushDateItem;
    new-instance v4, Lcom/nflystudio/Service/GameInfoItem;

    invoke-direct {v4}, Lcom/nflystudio/Service/GameInfoItem;-><init>()V

    iput-object v4, p0, Lcom/nflystudio/Service/PollingService;->gameinfo:Lcom/nflystudio/Service/GameInfoItem;

    .line 173
    iget-object v0, v3, Lcom/nflystudio/Service/PushDateItem;->classType:Ljava/lang/String;

    .line 174
    .local v0, "classType":Ljava/lang/String;
    iget-object v4, v3, Lcom/nflystudio/Service/PushDateItem;->title:Ljava/lang/String;

    iput-object v4, p0, Lcom/nflystudio/Service/PollingService;->title:Ljava/lang/String;

    .line 175
    iget-object v4, v3, Lcom/nflystudio/Service/PushDateItem;->gamebody:Ljava/lang/String;

    iput-object v4, p0, Lcom/nflystudio/Service/PollingService;->gamebody:Ljava/lang/String;

    .line 178
    const-string v4, "game"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    const-class v4, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;

    const-string v5, "gameId"

    .line 180
    iget-object v6, v3, Lcom/nflystudio/Service/PushDateItem;->dtid:Ljava/lang/String;

    .line 179
    invoke-direct {p0, v4, v5, v6}, Lcom/nflystudio/Service/PollingService;->showNotification(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    const-string v4, "page"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    const-class v4, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;

    const-string v5, "id"

    .line 184
    iget-object v6, v3, Lcom/nflystudio/Service/PushDateItem;->id:Ljava/lang/String;

    .line 183
    invoke-direct {p0, v4, v5, v6}, Lcom/nflystudio/Service/PollingService;->showNotification(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_2
    const-class v4, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;

    invoke-direct {p0, v4, v6, v6}, Lcom/nflystudio/Service/PollingService;->showNotification(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/nflystudio/Service/PollingService;->getPerTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nflystudio/Service/PollingService;->begindate:J

    .line 52
    iget-wide v0, p0, Lcom/nflystudio/Service/PollingService;->begindate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nflystudio/Service/PollingService;->begindate:J

    .line 55
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 87
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 74
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u540e\u53f0\u670d\u52a1\u5668\u7528\u4e86START_STICKY\u5c5e\u6027\u3002"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    iget-boolean v0, p0, Lcom/nflystudio/Service/PollingService;->switchs:Z

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5f00\u59cb\u8bbf\u95ee\u7f51\u7edc\u7684\u6570\u636e"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/nflystudio/Service/PollingService;->requestServer()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nflystudio/Service/PollingService;->switchs:Z

    .line 80
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
