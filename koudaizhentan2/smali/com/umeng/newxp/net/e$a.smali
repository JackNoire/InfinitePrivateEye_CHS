.class public Lcom/umeng/newxp/net/e$a;
.super Ljava/lang/Object;
.source "XpReportRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/net/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final w:Ljava/util/Random;

.field private static final x:I = 0x7fff


# instance fields
.field private A:I

.field private B:I

.field a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/umeng/newxp/net/e$a;->w:Ljava/util/Random;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/newxp/net/e$a;->A:I

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/newxp/net/e$a;->B:I

    .line 220
    iput-object p1, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;

    .line 222
    return-void
.end method

.method private a(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    sget-object v2, Lcom/umeng/newxp/net/e;->e:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 272
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    .line 275
    const-string v3, "category"

    aput-object v3, v2, v1

    .line 276
    const-string v3, "sid"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    .line 277
    const-string v4, "device_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 278
    const-string v4, "idmd5"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mc"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 279
    const-string v4, "action_type"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 280
    const-string v4, "action_index"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 281
    const-string v4, "layout_type"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 282
    const-string v4, "time"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 283
    const-string v4, "date"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 284
    const-string v4, "access"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 285
    const-string v4, "access_subtype"

    aput-object v4, v2, v3

    .line 272
    sput-object v2, Lcom/umeng/newxp/net/e;->e:[Ljava/lang/String;

    .line 291
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    move v0, v1

    .line 303
    :cond_2
    return v0

    .line 294
    :cond_3
    sget-object v3, Lcom/umeng/newxp/net/e;->e:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 295
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 297
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Report params has no required param ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 297
    invoke-static {v0, v5}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 294
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private c()Ljava/util/Map;
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
    const/4 v0, 0x0

    .line 307
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 310
    :try_start_0
    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 311
    const-string v2, "slot_id"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :goto_0
    const-string v2, "sdk_version"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v2, "protocol_version"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v2, "ts"

    iget-wide v3, p0, Lcom/umeng/newxp/net/e$a;->l:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v2, "device_model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    const-string v3, "mc"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_0
    const-string v2, "carrier"

    .line 332
    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/common/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v2, "os_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v2, "os"

    const-string v3, "android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v2, "rid"

    iget v3, p0, Lcom/umeng/newxp/net/e$a;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v2, "access"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->p:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->q:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    const-string v2, "access_subtype"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->q:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_1
    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->z:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    const-string v2, "tcost"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->z:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_2
    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 349
    const-string v2, "sid"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_3
    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 353
    const-string v2, "device_id"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v2, "idmd5"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/umeng/common/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_4
    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->m(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v2

    .line 358
    if-eqz v2, :cond_5

    .line 359
    const-string v3, "lat"

    .line 360
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v3, "lng"

    .line 362
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 364
    const-string v4, "gpst"

    .line 365
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_5
    const-string v2, "date"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v2, "time"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v2, "timezone"

    iget v3, p0, Lcom/umeng/newxp/net/e$a;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v2, "orientation"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 376
    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Empty promoters found. Report aborted."

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_1
    return-object v0

    .line 313
    :cond_6
    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 314
    const-string v2, "app_key"

    iget-object v3, p0, Lcom/umeng/newxp/net/e$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move-object v0, v1

    .line 403
    goto :goto_1

    .line 316
    :cond_7
    :try_start_1
    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    .line 317
    const-string v3, "Both UMENG_APPKEY and UMENG_SLOTID are empty, please specify either one.  Report aborted."

    .line 316
    invoke-static {v2, v3}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 380
    :cond_8
    const-string v0, "promoter"

    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->n:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v0, "category"

    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->o:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v0, "action_type"

    iget v2, p0, Lcom/umeng/newxp/net/e$a;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v0, "action_index"

    iget v2, p0, Lcom/umeng/newxp/net/e$a;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v0, "layout_type"

    iget v2, p0, Lcom/umeng/newxp/net/e$a;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v0, "page_level"

    iget v2, p0, Lcom/umeng/newxp/net/e$a;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 392
    const-string v0, "channel"

    iget-object v2, p0, Lcom/umeng/newxp/net/e$a;->v:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_9
    iget v0, p0, Lcom/umeng/newxp/net/e$a;->A:I

    if-eqz v0, :cond_a

    .line 396
    const-string v0, "display_style"

    iget v2, p0, Lcom/umeng/newxp/net/e$a;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_a
    const-string v0, "page_content_type"

    iget v2, p0, Lcom/umeng/newxp/net/e$a;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public a(I)Lcom/umeng/newxp/net/e$a;
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lcom/umeng/newxp/net/e$a;->r:I

    .line 165
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/umeng/newxp/net/e$a;->d:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public varargs a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 199
    array-length v2, p1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 202
    iget-object v1, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 204
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v0

    .line 207
    :goto_1
    if-lt v1, v2, :cond_2

    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->n:Ljava/lang/String;

    .line 214
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->o:Ljava/lang/String;

    .line 216
    :cond_0
    return-object p0

    .line 199
    :cond_1
    aget-object v3, p1, v1

    .line 200
    iget-object v4, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/umeng/newxp/Promoter;->promoter:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/umeng/newxp/Promoter;->category:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a()Lcom/umeng/newxp/net/e;
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/umeng/newxp/net/e$a;->b()Ljava/util/Map;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/umeng/newxp/net/e;

    invoke-direct {v1, v0}, Lcom/umeng/newxp/net/e;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public b(I)Lcom/umeng/newxp/net/e$a;
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcom/umeng/newxp/net/e$a;->s:I

    .line 170
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/umeng/newxp/net/e$a;->c:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 4
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 230
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->sdk_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->e:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->protocol_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->f:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->h:Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/umeng/common/util/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/umeng/newxp/net/e$a;->i:Ljava/lang/String;

    .line 237
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->j:Ljava/lang/String;

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/newxp/net/e$a;->l:J

    .line 240
    iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/b;->o(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/net/e$a;->k:I

    .line 242
    iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    :goto_0
    iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->m:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/common/g;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->v:Ljava/lang/String;

    .line 246
    sget-object v0, Lcom/umeng/newxp/net/e$a;->w:Ljava/util/Random;

    const/16 v1, 0x7fff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/net/e$a;->y:I

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/umeng/newxp/net/e$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/b;->k(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 250
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/umeng/newxp/net/e$a;->p:Ljava/lang/String;

    .line 253
    const-string v1, "2G/3G"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->q:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/umeng/newxp/net/e$a;->c()Ljava/util/Map;

    move-result-object v0

    .line 262
    sget-boolean v1, Lcom/umeng/newxp/common/ExchangeConstants;->DEBUG_MODE:Z

    if-eqz v1, :cond_1

    .line 263
    invoke-direct {p0, v0}, Lcom/umeng/newxp/net/e$a;->a(Ljava/util/Map;)Z

    move-result v1

    .line 264
    if-nez v1, :cond_1

    .line 265
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Report params verify failed..."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1
    return-object v0

    .line 242
    :cond_2
    const-string v0, "1"

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/umeng/newxp/net/e$a;->p:Ljava/lang/String;

    goto :goto_1
.end method

.method public c(I)Lcom/umeng/newxp/net/e$a;
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcom/umeng/newxp/net/e$a;->t:I

    .line 175
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/umeng/newxp/net/e$a;->g:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public d(I)Lcom/umeng/newxp/net/e$a;
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/umeng/newxp/net/e$a;->u:I

    .line 180
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/umeng/newxp/net/e$a;->z:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public e(I)Lcom/umeng/newxp/net/e$a;
    .locals 0

    .prologue
    .line 184
    iput p1, p0, Lcom/umeng/newxp/net/e$a;->B:I

    .line 185
    return-object p0
.end method

.method public f(I)Lcom/umeng/newxp/net/e$a;
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/umeng/newxp/net/e$a;->A:I

    .line 190
    return-object p0
.end method
