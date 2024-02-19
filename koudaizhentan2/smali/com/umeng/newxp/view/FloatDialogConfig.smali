.class public Lcom/umeng/newxp/view/FloatDialogConfig;
.super Ljava/lang/Object;
.source "FloatDialogConfig.java"


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v2, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->a:Z

    .line 14
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->b:J

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->c:J

    .line 17
    const/16 v0, 0x1e

    iput v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->d:I

    .line 18
    iput v2, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->e:I

    .line 11
    return-void
.end method


# virtual methods
.method public getDelayProgress()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->d:I

    return v0
.end method

.method public getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->f:Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    return-object v0
.end method

.method public getNativeFlag()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->e:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->c:J

    return-wide v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->b:J

    return-wide v0
.end method

.method public isDelay()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->a:Z

    return v0
.end method

.method public isTimeout()Z
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDelay(Z)Lcom/umeng/newxp/view/FloatDialogConfig;
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->a:Z

    .line 32
    return-object p0
.end method

.method public setDelayProgress(I)Lcom/umeng/newxp/view/FloatDialogConfig;
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->d:I

    .line 42
    return-object p0
.end method

.method public setListener(Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)Lcom/umeng/newxp/view/FloatDialogConfig;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->f:Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    .line 103
    return-object p0
.end method

.method public setNativeFlag(I)Lcom/umeng/newxp/view/FloatDialogConfig;
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->e:I

    .line 83
    return-object p0
.end method

.method public setStartTime(J)Lcom/umeng/newxp/view/FloatDialogConfig;
    .locals 0

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->c:J

    .line 68
    return-object p0
.end method

.method public setTimeout(J)Lcom/umeng/newxp/view/FloatDialogConfig;
    .locals 0

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->b:J

    .line 55
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDelay="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
