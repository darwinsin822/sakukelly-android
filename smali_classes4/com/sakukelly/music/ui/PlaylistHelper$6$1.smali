.class Lcom/sakukelly/music/ui/PlaylistHelper$6$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;

.field final synthetic val$songs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$6;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;

    iput-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->val$songs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 275
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->val$songs:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "Cerrar"

    const-string v3, "\ud83c\udfb5 "

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->val$songs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 291
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->val$songs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 292
    iget-object v5, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->val$songs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sakukelly/music/data/model/Song;

    .line 293
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 291
    move v4, v6

    goto :goto_0

    .line 296
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;

    iget-object v5, v5, Lcom/sakukelly/music/ui/PlaylistHelper$6;->val$context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;

    iget-object v5, v5, Lcom/sakukelly/music/ui/PlaylistHelper$6;->val$playlistName:Ljava/lang/String;

    iget-object v6, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->val$songs:Ljava/util/List;

    .line 297
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;

    invoke-direct {v4, p0}, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$6$1;)V

    .line 298
    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$2;

    invoke-direct {v3, p0}, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$2;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$6$1;)V

    .line 324
    const-string v4, "\u2795 A\u00f1adir m\u00e1s"

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 332
    return-void

    .line 276
    :cond_2
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;

    iget-object v4, v4, Lcom/sakukelly/music/ui/PlaylistHelper$6;->val$context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;

    iget-object v4, v4, Lcom/sakukelly/music/ui/PlaylistHelper$6;->val$playlistName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 278
    const-string v3, "Esta lista no contiene canciones actualmente."

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$1;

    invoke-direct {v3, p0}, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$1;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$6$1;)V

    .line 279
    const-string v4, "\u2795 A\u00f1adir canciones"

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 287
    return-void
.end method
