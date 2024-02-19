.class public Lcom/umeng/newxp/UBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "boradcast_action_key"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 22
    :goto_0
    return-void

    .line 16
    :pswitch_0
    invoke-virtual {p0}, Lcom/umeng/newxp/UBroadcastReceiver;->onShow()V

    goto :goto_0

    .line 19
    :pswitch_1
    invoke-virtual {p0}, Lcom/umeng/newxp/UBroadcastReceiver;->onDismiss()V

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
