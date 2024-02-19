.class public Lcom/umeng/newxp/controller/ExchangeDataService;
.super Ljava/lang/Object;
.source "ExchangeDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/controller/ExchangeDataService$a;
    }
.end annotation


# static fields
.field public static DEBUG_NEW_TIPS:I = 0x0

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final p:Ljava/lang/String; = "EXCHANGE_PRELOAD_ADS"


# instance fields
.field private a:Ljava/lang/String;

.field public appkey:Ljava/lang/String;

.field public autofill:I

.field private b:Ljava/lang/String;

.field public broadcast:Z

.field private c:Z

.field private d:Z

.field public displayStyle:I

.field private e:I

.field private f:Z

.field private i:Ljava/lang/String;

.field public initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field public landing_image:Ljava/lang/String;

.field public layoutType:I

.field private m:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mDataReceiverListener:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

.field private n:Ljava/lang/String;

.field public newTips:I

.field private o:Ljava/lang/String;

.field public oid:J

.field public opensize:Ljava/lang/String;

.field public page_index:I

.field public pagination:Z

.field public preloadData:Lcom/umeng/newxp/a;

.field private q:Ljava/lang/String;

.field public require_desc:I

.field public sessionId:Ljava/lang/String;

.field public show_progress_wheel:Z

.field public slot_id:Ljava/lang/String;

.field public timeLine:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, -0x1

    sput v0, Lcom/umeng/newxp/controller/ExchangeDataService;->DEBUG_NEW_TIPS:I

    .line 293
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 176
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-class v0, Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    .line 122
    iput v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->autofill:I

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->landing_image:Ljava/lang/String;

    .line 131
    iput v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    .line 136
    iput v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->displayStyle:I

    .line 141
    iput v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->require_desc:I

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    .line 148
    iput-boolean v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->c:Z

    .line 150
    iput-boolean v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->d:Z

    .line 155
    iput v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->e:I

    .line 157
    iput-boolean v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->f:Z

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->appkey:Ljava/lang/String;

    .line 183
    iput-boolean v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->pagination:Z

    .line 185
    iput-boolean v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->show_progress_wheel:Z

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;

    .line 198
    iput v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mDataReceiverListener:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    .line 220
    const-string v0, "PROMOTERS_FIRST_PAGE_"

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->j:Ljava/lang/String;

    .line 225
    const-string v0, "PROMOTERS_NEXT_PAGE_"

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->k:Ljava/lang/String;

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->l:Ljava/lang/String;

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->m:Ljava/lang/String;

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->n:Ljava/lang/String;

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->o:Ljava/lang/String;

    .line 286
    iput v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    .line 893
    iput-boolean v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->broadcast:Z

    .line 171
    iput-object p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    .line 173
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;)I
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 317
    if-nez p1, :cond_1

    move v1, v2

    .line 341
    :cond_0
    :goto_0
    return v1

    .line 320
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 321
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v1, v2

    :goto_1
    if-gez v3, :cond_2

    .line 332
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 333
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 334
    invoke-virtual {v0, v7}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 335
    iget v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    invoke-virtual {v0, v3}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v3

    new-array v0, v2, [Lcom/umeng/newxp/Promoter;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/newxp/Promoter;

    invoke-virtual {v3, v0}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 338
    new-instance v2, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;

    iget-object v5, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/umeng/common/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    sget-object v5, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "Installed: "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 324
    const-string v6, ". Remove from the list."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v5, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 326
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget v0, v0, Lcom/umeng/newxp/Promoter;->new_tip:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 328
    add-int/lit8 v0, v1, 0x1

    .line 321
    :goto_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private a()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    :try_start_0
    const-string v1, "sdk_version"

    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->sdk_version:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v1, "protocol_version"

    .line 360
    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->protocol_version:Ljava/lang/String;

    .line 359
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 364
    const-string v1, "slot_id"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :goto_0
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 378
    const-string v2, "device_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v2, "idmd5"

    invoke-static {v1}, Lcom/umeng/common/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v1, "os"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    const-string v2, "mc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/common/g;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "channel"

    .line 389
    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/common/g;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_1
    const-string v1, "layout_type"

    iget v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v1, "channel"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/common/g;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 397
    if-eqz v1, :cond_f

    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_f

    .line 398
    const-string v2, "locale"

    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v2, "language"

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :goto_1
    const-string v1, "timezone"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->o(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v1, "resolution"

    .line 408
    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :try_start_1
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->k(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 412
    const-string v2, "access"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v2, "2G/3G"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 416
    const-string v2, "access_subtype"

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 423
    :cond_2
    :goto_2
    :try_start_2
    const-string v1, "carrier"

    .line 424
    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->m(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 428
    if-eqz v1, :cond_3

    .line 429
    const-string v2, "lat"

    .line 430
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v2, "lng"

    .line 432
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    .line 434
    const-string v3, "gpst"

    .line 435
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_3
    invoke-static {}, Lcom/umeng/common/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 439
    const-string v2, "cpu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-static {}, Lcom/umeng/common/util/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 442
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 443
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 445
    const-string v3, "date"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v1, "timezone"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->o(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 453
    const-string v2, "apnm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_4
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 458
    const-string v2, "apvn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_5
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 463
    const-string v2, "apvc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_6
    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 468
    const-string v1, "adnm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_7
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, ""

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 472
    const-string v1, "keywords"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    .line 471
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_8
    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->autofill:I

    if-eq v1, v5, :cond_9

    const-string v1, "autofill"

    iget v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->autofill:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_9
    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->require_desc:I

    if-eq v1, v5, :cond_a

    const-string v1, "require_desc"

    iget v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->require_desc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_a
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_b

    .line 485
    const-string v1, "sid"

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tpage_index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 487
    iget v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_b
    iget-boolean v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->pagination:Z

    if-eqz v1, :cond_c

    .line 491
    const-string v1, "more"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_c
    :goto_3
    return-object v0

    .line 366
    :cond_d
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v1}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 369
    const-string v2, "app_key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 494
    :catch_0
    move-exception v1

    .line 495
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ERROR GET INPUT."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 371
    :cond_e
    :try_start_3
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    .line 372
    const-string v2, "Both UMENG_APPKEY and UMENG_SLOTID are empty, please specify either one. Request aborted."

    .line 371
    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    goto :goto_3

    .line 401
    :cond_f
    const-string v1, "locale"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v1, "language"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 418
    :catch_1
    move-exception v1

    .line 419
    const-string v1, "access"

    const-string v2, "Unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/ExchangeDataService;I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->e:I

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/ExchangeDataService;Z)V
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->c:Z

    return-void
.end method

.method private a(Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;I)V
    .locals 3

    .prologue
    .line 563
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 564
    invoke-direct {p0, p1, p2}, Lcom/umeng/newxp/controller/ExchangeDataService;->b(Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;I)V

    .line 569
    :goto_0
    return-void

    .line 566
    :cond_0
    new-instance v0, Lcom/umeng/newxp/controller/ExchangeDataService$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService$a;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/ExchangeDataService;)Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/umeng/newxp/controller/ExchangeDataService;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 579
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 580
    :goto_0
    new-instance v2, Lcom/umeng/newxp/controller/c;

    invoke-direct {v2, p0, p1, v0}, Lcom/umeng/newxp/controller/c;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;Z)V

    .line 636
    new-instance v0, Lcom/umeng/newxp/controller/ExchangeDataService$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/umeng/newxp/controller/ExchangeDataService$a;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->start()V

    .line 637
    return-void

    .line 579
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/newxp/controller/ExchangeDataService;)Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->d:Z

    return v0
.end method

.method static synthetic i(Lcom/umeng/newxp/controller/ExchangeDataService;)Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->f:Z

    return v0
.end method

.method static synthetic j(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clickOnPromoter(Lcom/umeng/newxp/Promoter;)V
    .locals 3

    .prologue
    .line 953
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    const/4 v2, 0x0

    invoke-static {p1, v0, p0, v1, v2}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/Promoter;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZ)V

    .line 954
    return-void
.end method

.method public getBroadCastAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 900
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    .line 902
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/umeng/common/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/umeng/common/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->q:Ljava/lang/String;

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get BroadcastAction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->q:Ljava/lang/String;

    return-object v0

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTemplate()I
    .locals 1

    .prologue
    .line 886
    iget v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->e:I

    return v0
.end method

.method public getTimeConsuming()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 106
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    aget-wide v0, v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    aget-wide v0, v0, v2

    .line 108
    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    .line 109
    iget-object v4, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    .line 110
    iget-object v6, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    .line 112
    sub-long v0, v2, v0

    .line 113
    sub-long v2, v6, v4

    .line 114
    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilterInstalledApp()Z
    .locals 1

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->c:Z

    return v0
.end method

.method public preloadData(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;I)V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData(Landroid/content/Context;Ljava/util/List;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;I)V

    .line 262
    return-void
.end method

.method public preloadData(Landroid/content/Context;Ljava/util/List;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 265
    iget v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    if-eq v0, p4, :cond_0

    .line 266
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    const-string v1, "sorry  type is no match "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 269
    :cond_0
    iput p4, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    .line 272
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    if-nez v0, :cond_1

    .line 273
    new-instance v0, Lcom/umeng/newxp/a;

    invoke-direct {v0, p1, p0, p3}, Lcom/umeng/newxp/a;-><init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;)V

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    .line 277
    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v0, p2}, Lcom/umeng/newxp/a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v0, p3}, Lcom/umeng/newxp/a;->a(Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;)V

    goto :goto_1

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v0}, Lcom/umeng/newxp/a;->a()V

    goto :goto_0
.end method

.method public registerBroadcast(Landroid/content/Context;Lcom/umeng/newxp/UBroadcastReceiver;)V
    .locals 2

    .prologue
    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->broadcast:Z

    .line 916
    new-instance v0, Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getBroadCastAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 917
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 918
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 919
    return-void
.end method

.method public varargs reportImpression([Lcom/umeng/newxp/Promoter;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 935
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable send impression report.[promoters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :goto_1
    return-void

    .line 936
    :cond_1
    array-length v0, p1

    goto :goto_0

    .line 939
    :cond_2
    new-instance v1, Lcom/umeng/newxp/net/e$a;

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 940
    invoke-virtual {v1, v0}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 941
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 942
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 945
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    goto :goto_1
.end method

.method public requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EXCHANGE_PRELOAD_ADS_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 522
    iget v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->autofill:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->i:Ljava/lang/String;

    .line 523
    iput-object p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    .line 526
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 529
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->a:Ljava/lang/String;

    const-string v1, "No found Slot_id or Appkey!!!!!"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->ONLY_CHINESE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 546
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "English os can not show ads"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-interface {p2, v3, v4}, Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;->dataReceived(ILjava/util/List;)V

    .line 548
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mDataReceiverListener:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mDataReceiverListener:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    invoke-interface {v0, v3, v4}, Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;->dataReceived(ILjava/util/List;)V

    .line 560
    :cond_2
    :goto_1
    return-void

    .line 532
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRELOAD_KEY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->o:Ljava/lang/String;

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->l:Ljava/lang/String;

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->n:Ljava/lang/String;

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRELOAD_UPDATE_DATE_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->m:Ljava/lang/String;

    goto :goto_0

    .line 538
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRELOAD_KEY_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->o:Ljava/lang/String;

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->l:Ljava/lang/String;

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->n:Ljava/lang/String;

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRELOAD_UPDATE_DATE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->m:Ljava/lang/String;

    goto/16 :goto_0

    .line 553
    :cond_5
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 558
    invoke-direct {p0, p2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->a(Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;I)V

    goto/16 :goto_1
.end method

.method public requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;Z)V
    .locals 1

    .prologue
    .line 503
    if-eqz p3, :cond_1

    .line 504
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    .line 510
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    .line 511
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    goto :goto_0
.end method

.method public setFilterInstalledApp(Z)V
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->d:Z

    .line 875
    iput-boolean p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->c:Z

    .line 876
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->b:Ljava/lang/String;

    .line 641
    return-void
.end method

.method public setTemplate(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 879
    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    .line 880
    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->e:I

    .line 881
    iput-boolean v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService;->f:Z

    .line 883
    :cond_1
    return-void
.end method

.method public unregisterBroadcast(Landroid/content/Context;Lcom/umeng/newxp/UBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 927
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 928
    return-void
.end method
