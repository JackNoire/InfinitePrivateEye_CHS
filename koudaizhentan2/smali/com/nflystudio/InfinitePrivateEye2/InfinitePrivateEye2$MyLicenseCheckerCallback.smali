.class Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "InfinitePrivateEye2.java"

# interfaces
.implements Lcom/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;


# direct methods
.method private constructor <init>(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;-><init>(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v0, "CHECK LICENSE"

    const-string v1, "COMPLETE CHECK LICENSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public applicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v1}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string v1, "CHECK LICENSE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR CHECK LICENSE = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v0, "\ub77c\uc774\uc13c\uc2a4 \uc778\uc99d\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4."

    .line 165
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 167
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v1}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->finish()V

    goto :goto_0
.end method

.method public dontAllow()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v1}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v0, "\ub77c\uc774\uc13c\uc2a4 \uc778\uc99d\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4."

    .line 147
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 149
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v1}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->finish()V

    .line 151
    const-string v1, "CHECK LICENSE"

    const-string v2, "FAILED CHECK LICENSE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
