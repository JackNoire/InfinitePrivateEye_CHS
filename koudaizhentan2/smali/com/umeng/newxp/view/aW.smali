.class Lcom/umeng/newxp/view/aW;
.super Ljava/lang/Object;
.source "WapActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final f:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/newxp/view/aW;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 426
    new-instance v0, Lcom/umeng/newxp/view/aX;

    invoke-direct {v0}, Lcom/umeng/newxp/view/aX;-><init>()V

    sput-object v0, Lcom/umeng/newxp/view/aW;->f:Landroid/os/Parcelable$Creator;

    .line 434
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-boolean v0, p0, Lcom/umeng/newxp/view/aW;->a:Z

    .line 366
    iput-boolean v0, p0, Lcom/umeng/newxp/view/aW;->b:Z

    .line 367
    iput-boolean v0, p0, Lcom/umeng/newxp/view/aW;->c:Z

    .line 368
    iput-boolean v0, p0, Lcom/umeng/newxp/view/aW;->d:Z

    .line 370
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/view/aW;->e:I

    .line 373
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-boolean v1, p0, Lcom/umeng/newxp/view/aW;->a:Z

    .line 366
    iput-boolean v1, p0, Lcom/umeng/newxp/view/aW;->b:Z

    .line 367
    iput-boolean v1, p0, Lcom/umeng/newxp/view/aW;->c:Z

    .line 368
    iput-boolean v1, p0, Lcom/umeng/newxp/view/aW;->d:Z

    .line 370
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/view/aW;->e:I

    .line 417
    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 418
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 419
    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/umeng/newxp/view/aW;->a:Z

    .line 420
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/umeng/newxp/view/aW;->b:Z

    .line 421
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/umeng/newxp/view/aW;->c:Z

    .line 422
    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/umeng/newxp/view/aW;->d:Z

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aW;->e:I

    .line 424
    return-void
.end method


# virtual methods
.method public a(I)Lcom/umeng/newxp/view/aW;
    .locals 0

    .prologue
    .line 396
    iput p1, p0, Lcom/umeng/newxp/view/aW;->e:I

    .line 397
    return-object p0
.end method

.method public a(Z)Lcom/umeng/newxp/view/aW;
    .locals 0

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/umeng/newxp/view/aW;->a:Z

    .line 377
    return-object p0
.end method

.method public b(Z)Lcom/umeng/newxp/view/aW;
    .locals 0

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/umeng/newxp/view/aW;->b:Z

    .line 382
    return-object p0
.end method

.method public c(Z)Lcom/umeng/newxp/view/aW;
    .locals 0

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/umeng/newxp/view/aW;->c:Z

    .line 387
    return-object p0
.end method

.method public d(Z)Lcom/umeng/newxp/view/aW;
    .locals 0

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/umeng/newxp/view/aW;->d:Z

    .line 392
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 407
    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 408
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/umeng/newxp/view/aW;->a:Z

    aput-boolean v2, v0, v1

    .line 409
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/umeng/newxp/view/aW;->b:Z

    aput-boolean v2, v0, v1

    .line 410
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/umeng/newxp/view/aW;->c:Z

    aput-boolean v2, v0, v1

    .line 411
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/umeng/newxp/view/aW;->d:Z

    aput-boolean v2, v0, v1

    .line 412
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 413
    iget v0, p0, Lcom/umeng/newxp/view/aW;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    return-void
.end method
