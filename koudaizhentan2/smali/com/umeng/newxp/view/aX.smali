.class Lcom/umeng/newxp/view/aX;
.super Ljava/lang/Object;
.source "WapActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/umeng/newxp/view/aW;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/umeng/newxp/view/aW;
    .locals 1

    .prologue
    .line 428
    new-instance v0, Lcom/umeng/newxp/view/aW;

    invoke-direct {v0, p1}, Lcom/umeng/newxp/view/aW;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/umeng/newxp/view/aW;
    .locals 1

    .prologue
    .line 432
    new-array v0, p1, [Lcom/umeng/newxp/view/aW;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/newxp/view/aX;->a(Landroid/os/Parcel;)Lcom/umeng/newxp/view/aW;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/newxp/view/aX;->a(I)[Lcom/umeng/newxp/view/aW;

    move-result-object v0

    return-object v0
.end method
