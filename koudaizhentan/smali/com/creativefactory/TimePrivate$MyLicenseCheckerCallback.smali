.class Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "TimePrivate.java"

# interfaces
.implements Lcom/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/creativefactory/TimePrivate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/creativefactory/TimePrivate;


# direct methods
.method private constructor <init>(Lcom/creativefactory/TimePrivate;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;->this$0:Lcom/creativefactory/TimePrivate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/creativefactory/TimePrivate;Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;-><init>(Lcom/creativefactory/TimePrivate;)V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;->this$0:Lcom/creativefactory/TimePrivate;

    invoke-virtual {v0}, Lcom/creativefactory/TimePrivate;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string v0, "CHECK LICENSE"

    const-string v1, "COMPLETE CHECK LICENSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public applicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V
    .locals 3
    .param p1, "errorCode"    # Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    .prologue
    .line 312
    const-string v0, "CHECK LICENSE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR CHECK LICENSE = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method public dontAllow()V
    .locals 3

    .prologue
    .line 292
    iget-object v1, p0, Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;->this$0:Lcom/creativefactory/TimePrivate;

    invoke-virtual {v1}, Lcom/creativefactory/TimePrivate;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 297
    :cond_0
    const-string v1, "CHECK LICENSE"

    const-string v2, "FAILED CHECK LICENSE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v0, "\ub77c\uc774\uc13c\uc2a4 \uc778\uc99d\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4."

    .line 304
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;->this$0:Lcom/creativefactory/TimePrivate;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 306
    iget-object v1, p0, Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;->this$0:Lcom/creativefactory/TimePrivate;

    invoke-virtual {v1}, Lcom/creativefactory/TimePrivate;->finish()V

    goto :goto_0
.end method
