.class Lcom/sakukelly/music/ui/PlaylistHelper$7$1$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sakukelly/music/ui/PlaylistHelper$7$1;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$7$1;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7$1$1;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7$1$1;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$7$1;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$7$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$7;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$7;->val$context:Landroid/content/Context;

    const-string v1, "Lista eliminada"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    return-void
.end method
