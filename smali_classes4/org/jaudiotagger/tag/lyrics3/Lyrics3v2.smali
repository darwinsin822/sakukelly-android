.class public Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;
.super Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;
.source "Lyrics3v2.java"


# instance fields
.field private fieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 144
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->read(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/TagException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .locals 4

    .line 81
    invoke-direct {p0}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    .line 85
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    if-nez v0, :cond_3

    .line 89
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;

    .line 93
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    new-instance v1, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 94
    iget-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 100
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 102
    :catch_0
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/TagField;

    .line 109
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v2, :cond_2

    .line 111
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 112
    invoke-static {v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->isLyrics3v2Field(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    new-instance v2, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-direct {v2, v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 118
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;)V
    .locals 4

    .line 58
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 60
    iget-object v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    new-instance v2, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    iget-object v3, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-direct {v2, v3}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V

    .line 70
    iget-object v3, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private seekSize(Ljava/nio/ByteBuffer;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 213
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 218
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    .line 220
    iget-object v2, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    iget-object v0, v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getField(Ljava/lang/String;)Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    return-object p1
.end method

.method public getFieldCount()I
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 184
    const-string v0, "Lyrics3v2.00"

    return-object v0
.end method

.method public getSize()I
    .locals 3

    .line 193
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 196
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 199
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0xb

    return v1
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->seekSize(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 269
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->seek(Ljava/nio/ByteBuffer;)Z

    .line 270
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 272
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 277
    :catch_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v2, v0, -0xb

    if-ge v1, v2, :cond_0

    .line 281
    :try_start_0
    new-instance v1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Ljava/nio/ByteBuffer;)V

    .line 282
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->setField(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    .line 265
    :cond_1
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    const-string v0, "Lyrics3v2.00 Tag Not Found"

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 306
    new-array v1, v0, [B

    .line 313
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x89

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    const/16 v3, 0x9

    .line 314
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 315
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 317
    const-string v5, "LYRICS200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x9

    sub-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 326
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 327
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 329
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, 0xf

    sub-long/2addr v3, v5

    .line 341
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v5, 0x6

    .line 342
    invoke-virtual {p1, v1, v2, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 344
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v2, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    .line 347
    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 348
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 349
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 351
    const-string v0, "LYRICSBEGIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v2
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setField(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 359
    iget-object v0, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public updateField(Ljava/lang/String;)V
    .locals 3

    .line 379
    const-string v0, "IND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 381
    iget-object p1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    const-string v0, "LYR"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 386
    iget-object v1, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 388
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;

    .line 389
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyLYR;->hasTimeStamp()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 392
    :goto_0
    new-instance v1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    new-instance v2, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIND;

    invoke-direct {v2, p1, v0}, Lorg/jaudiotagger/tag/lyrics3/FieldFrameBodyIND;-><init>(ZZ)V

    invoke-direct {v1, v2}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 393
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->setField(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V

    :cond_1
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 407
    new-array v0, v0, [B

    .line 412
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    invoke-direct {v1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    .line 414
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->delete(Ljava/io/RandomAccessFile;)V

    .line 415
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 417
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 423
    const-string v5, "LYRICSBEGIN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p1, v0, v3, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 429
    const-string v4, "IND"

    invoke-virtual {p0, v4}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->updateField(Ljava/lang/String;)V

    .line 430
    iget-object v5, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 431
    invoke-virtual {v5, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->write(Ljava/io/RandomAccessFile;)V

    .line 433
    iget-object v5, p0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 435
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 437
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 439
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 440
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getLyrics3SaveField(Ljava/lang/String;)Z

    move-result v8

    .line 442
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v8, :cond_1

    .line 444
    invoke-virtual {v6, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 448
    :cond_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 450
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->getSize()I

    .line 457
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    move v2, v3

    .line 459
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x6

    if-ge v2, v4, :cond_3

    const/16 v4, 0x30

    .line 461
    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 464
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x6

    move v4, v3

    .line 466
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    add-int v5, v4, v2

    .line 468
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 471
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    move v1, v3

    :goto_4
    const/16 v4, 0x9

    if-ge v1, v4, :cond_5

    add-int v4, v1, v2

    .line 477
    const-string v5, "LYRICS200"

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v2, v4

    .line 482
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
