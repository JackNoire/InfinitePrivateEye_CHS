.class Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$6;
.super Ljava/lang/Object;
.source "ViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->regListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;


# direct methods
.method constructor <init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$6;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$6;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$10(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$6;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v1}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$11(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 307
    :pswitch_1
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$6;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$10(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$6;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v1}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$12(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
