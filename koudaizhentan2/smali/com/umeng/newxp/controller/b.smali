.class public Lcom/umeng/newxp/controller/b;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 173
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p4}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/newxp/Promoter;

    const/4 v2, 0x0

    .line 175
    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 177
    invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/umeng/newxp/net/c;

    invoke-direct {v1, p0, p3, v0}, Lcom/umeng/newxp/net/c;-><init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/net/e$a;)V

    invoke-virtual {v1}, Lcom/umeng/newxp/net/c;->a()V

    .line 179
    return-void
.end method

.method public static a(Lcom/umeng/newxp/Promoter;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 48
    new-instance v0, Lcom/umeng/newxp/controller/a$a;

    invoke-direct {v0, p0, v5}, Lcom/umeng/newxp/controller/a$a;-><init>(Lcom/umeng/newxp/Promoter;I)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZI)V

    .line 50
    return-void
.end method

.method private static a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
    .locals 8

    .prologue
    .line 121
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    invoke-direct {v0, p1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 122
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 123
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/newxp/Promoter;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 124
    invoke-virtual {p2}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 125
    invoke-static {p1, p2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p2, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p2, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    invoke-direct {v1, p1}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v2, "umeng_xp_dialog_download_window"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 133
    new-instance v0, Lcom/umeng/newxp/view/o;

    iget v4, p0, Lcom/umeng/newxp/controller/a$a;->b:I

    .line 134
    sget-object v7, Lcom/umeng/newxp/view/o$a;->b:Lcom/umeng/newxp/view/o$a;

    move-object v1, p1

    move-object v2, p4

    move v3, p3

    move-object v5, p2

    .line 133
    invoke-direct/range {v0 .. v7}, Lcom/umeng/newxp/view/o;-><init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;IILcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/view/o$a;)V

    .line 135
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 136
    return-void
.end method

.method public static a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZI)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v4, p0, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    .line 67
    iget-object v0, v4, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/umeng/common/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p1, p2, p3, v4, p5}, Lcom/umeng/newxp/controller/b;->d(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V

    .line 116
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, v4, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    sget-object v2, Lcom/umeng/newxp/Promoter$a;->a:Lcom/umeng/newxp/Promoter$a;

    invoke-virtual {v2}, Lcom/umeng/newxp/Promoter$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v1, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;-><init>(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x7

    iput v0, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    .line 81
    invoke-static {p1, v1, v3, v3}, Lcom/umeng/newxp/view/aw;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    goto :goto_0

    .line 88
    :cond_1
    if-eqz v1, :cond_2

    sget-object v0, Lcom/umeng/newxp/Promoter$a;->b:Lcom/umeng/newxp/Promoter$a;

    invoke-virtual {v0}, Lcom/umeng/newxp/Promoter$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    .line 89
    invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V

    goto :goto_0

    .line 93
    :cond_2
    iget v0, v4, Lcom/umeng/newxp/Promoter;->landing_type:I

    .line 94
    if-eqz p4, :cond_3

    if-nez v0, :cond_3

    .line 95
    const/4 v0, 0x1

    .line 98
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->b(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-static {p1, p2, p3, v4, p5}, Lcom/umeng/newxp/controller/b;->c(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V

    goto :goto_0

    .line 104
    :pswitch_2
    invoke-static {p1, p2, p3, v4, p5}, Lcom/umeng/newxp/controller/b;->b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V

    goto :goto_0

    .line 107
    :pswitch_3
    invoke-static {p1, p2, p3, v4, p5}, Lcom/umeng/newxp/controller/b;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 184
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 185
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/newxp/Promoter;

    aput-object p3, v1, v3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 187
    invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 192
    :try_start_0
    iget-object v0, p3, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 193
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "umeng_xp_no_browser_tips"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static b(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 141
    invoke-static {p1}, Lcom/umeng/newxp/a/d;->o(Landroid/content/Context;)I

    move-result v0

    if-le v2, v0, :cond_0

    .line 142
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "no resource open download dialog."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p1, p2, p3, p4, p5}, Lcom/umeng/newxp/controller/b;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V

    .line 168
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    invoke-direct {v0, p1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 148
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 149
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    new-array v1, v2, [Lcom/umeng/newxp/Promoter;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 150
    invoke-virtual {p2}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 151
    invoke-static {p1, p2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p2, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p2, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    invoke-direct {v1, p1}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 155
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->USE_SIMPLE_DIALOG:Z

    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Lcom/umeng/newxp/view/aK;

    .line 157
    iget v4, p0, Lcom/umeng/newxp/controller/a$a;->b:I

    move-object v1, p1

    move-object v2, p4

    move v3, p3

    move-object v5, p2

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/umeng/newxp/view/aK;-><init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;IILcom/umeng/newxp/controller/ExchangeDataService;)V

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "umeng_xp_dialog_download_window"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 164
    new-instance v0, Lcom/umeng/newxp/view/o;

    iget v4, p0, Lcom/umeng/newxp/controller/a$a;->b:I

    .line 165
    sget-object v7, Lcom/umeng/newxp/view/o$a;->a:Lcom/umeng/newxp/view/o$a;

    move-object v1, p1

    move-object v2, p4

    move v3, p3

    move-object v5, p2

    .line 164
    invoke-direct/range {v0 .. v7}, Lcom/umeng/newxp/view/o;-><init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;IILcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/view/o$a;)V

    .line 166
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 203
    invoke-static {p0}, Lcom/umeng/newxp/a/d;->r(Landroid/content/Context;)I

    move-result v0

    if-le v2, v0, :cond_0

    .line 204
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "no resource open native webview."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {p0, p1, p2, p3, p4}, Lcom/umeng/newxp/controller/b;->b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V

    .line 216
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 209
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 210
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    new-array v1, v2, [Lcom/umeng/newxp/Promoter;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 212
    invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 215
    new-instance v0, Lcom/umeng/newxp/view/LandingWebViewDialog;

    iget-object v1, p3, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/umeng/newxp/view/LandingWebViewDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->show()V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 221
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p4}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/newxp/Promoter;

    .line 223
    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 225
    invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 229
    iget-object v0, p3, Lcom/umeng/newxp/Promoter;->url_in_app:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p3, Lcom/umeng/newxp/Promoter;->url_in_app:Ljava/lang/String;

    .line 229
    invoke-static {p0, v0}, Lcom/umeng/common/util/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p3, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/umeng/common/util/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
