.class Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$5;
.super Ljava/lang/Object;
.source "StrategyActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->bottomControler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

.field private final synthetic val$back:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$5;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    iput-object p2, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$5;->val$back:Landroid/widget/ImageView;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 250
    :pswitch_0
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$5;->val$back:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$5;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    invoke-static {v1}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->access$5(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$5;->val$back:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$5;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    invoke-static {v1}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->access$6(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
